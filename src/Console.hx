#if macro
import haxe.macro.Format;
import haxe.macro.Context;
import haxe.macro.Expr;
#end

// For windows consoles we have to enable formatting through kernel32 calls
@:cppFileCode('
	#if defined(HX_WINDOWS)
	#include <windows.h>
	#endif
')
@:nullSafety
class Console {

	static public var formatMode = determineConsoleFormatMode();

	static public var logPrefix = '<b,gray>><//> ';
	static public var warnPrefix = '<b,yellow>><//> ';
	static public var errorPrefix = '<b,red>></b> ';
	static public var successPrefix = '<b,light_green>><//> ';
	static public var debugPrefix = '<b,magenta>><//> ';

	// sometimes it's useful to intercept calls to print
 	// return false to prevent default print behavior
	// (str: String, outputStream: ConsoleOutputStream) -> Bool
	static public var printIntercept: Null<String -> ConsoleOutputStream -> Bool> = null;

	static var argSeparator = ' ';
	static var unicodeCompatibilityMode:UnicodeCompatibilityMode = #if ((sys || nodejs)) Sys.systemName() == 'Windows' ? Windows : #end None;
	static var unicodeCompatibilityEnabled = false;

	macro static public function log(rest:Array<Expr>){
		rest = rest.map(removeMarkupMeta);
		return macro Console.printlnFormatted(Console.logPrefix + ${joinArgExprs(rest)}, Log);
	}

	macro static public function warn(rest:Array<Expr>){
		rest = rest.map(removeMarkupMeta);
		return macro Console.printlnFormatted(Console.warnPrefix + ${joinArgExprs(rest)}, Warn);
	}

	macro static public function error(rest:Array<Expr>){
		rest = rest.map(removeMarkupMeta);
		return macro Console.printlnFormatted(Console.errorPrefix + ${joinArgExprs(rest)}, Error);
	}

	macro static public function success(rest:Array<Expr>){
		rest = rest.map(removeMarkupMeta);
		return macro Console.printlnFormatted(Console.successPrefix + ${joinArgExprs(rest)}, Log);
	}

	macro static public function examine(rest:Array<Expr>) {
		var printer = new haxe.macro.Printer();
		var namedArgs = rest.map(function(e) {
			switch e.expr {
				case EConst(CInt(_) | CFloat(_)):
					return macro '<cyan>' + $e + '</>';
				case EConst(CString(_)):
					return macro '<yellow>' + $e + '</>';
				// print expression as a string as well as the expression value (in bold)
				default:
					var exprString = printer.printExpr(e);
					return macro '<b>' + $v{exprString} + ':</> <i,magenta>' + Std.string(cast $e) + '</>';
			}
		});
		return macro Console.log(${joinArgExprs(namedArgs)});
	}

	// Only generates log call if -debug build flag is supplied
	macro static public function debug(rest:Array<Expr>){
		if(!Context.getDefines().exists('debug')) return macro null;
		rest = rest.map(removeMarkupMeta);
		#if haxe4
		var pos = haxe.macro.PositionTools.toLocation(Context.currentPos());
		var posString = '${pos.file}:${pos.range.start.line}';
		#elseif haxe3
		var pos = Context.currentPos();
		var posString: String = '$pos';
		// strip #pos( characters x-y)
		var posPattern = ~/#pos\((.*)\)$/;
		if (posPattern.match(posString)) {
			posString = posPattern.matched(1);
			var charactersPattern = ~/:\s*characters\s*[\d-]+$/;
			if (charactersPattern.match(posString)) {
				posString = charactersPattern.matchedLeft();
			}
		}
		#end
		return macro Console.printlnFormatted(Console.debugPrefix + '<magenta,b>$posString:</> ' + ${joinArgExprs(rest)}, Debug);
	}

	static public inline function printlnFormatted(?s:String = '', outputStream:ConsoleOutputStream = Log){
		return printFormatted(s + '\n', outputStream);
	}

	static public inline function println(s:String = '', outputStream:ConsoleOutputStream = Log){
		return print(s + '\n', outputStream);
	}

	#if macro
	static function removeMarkupMeta(e: Expr) {
		return switch e.expr {
			case EMeta({name: ':markup'}, innerExpr):
				Format.format(innerExpr);
			default:
				e;
		}
	}
	#end

	static var formatTagPattern = ~/(\\)?<(\/)?([^><{}\s]*|{[^}<>]*})>/g;
	static function format(s: String, formatMode: ConsoleFormatMode) {
		s = s + '<//>';// Add a reset all to the end to prevent overflowing formatting to subsequent lines

		var activeFormatFlagStack = new Array<FormatFlag>();
		var groupedProceedingTags = new Array<Int>();
		var browserFormatArguments = [];

		inline function addFlag(flag: FormatFlag, proceedingTags: Int) {
			activeFormatFlagStack.push(flag);
			groupedProceedingTags.push(proceedingTags);
		}

		inline function removeFlag(flag: FormatFlag) {
			var i = activeFormatFlagStack.indexOf(flag);
			if (i != -1) {
				var proceedingTags = groupedProceedingTags[i];
				// remove n tags
				activeFormatFlagStack.splice(i - proceedingTags, proceedingTags + 1);
				groupedProceedingTags.splice(i - proceedingTags, proceedingTags + 1);
			}
		}

		inline function resetFlags() {
			activeFormatFlagStack = [];
			groupedProceedingTags = [];
		}

		var result = formatTagPattern.map(s, function(e) {
			var escaped = e.matched(1) != null;
			if (escaped) {
				return e.matched(0);
			}

			var open = e.matched(2) == null;
			var tags = e.matched(3).split(',');

			// handle </> and <//>
			if (!open && tags.length == 1) {
				if (tags[0] == '') {
					// we've got a shorthand to close the last tag: </>
					var last = activeFormatFlagStack[activeFormatFlagStack.length - 1];
					removeFlag(last);
				} else if (FormatFlag.fromString(tags[0]) == FormatFlag.RESET) {
					resetFlags();
				} else {
					// handle </*>
					var flag = FormatFlag.fromString(tags[0]);
					if (flag != null) {
						removeFlag(flag);
					}
				}
			} else {
				var proceedingTags = 0;
				for (tag in tags) {
					var flag = FormatFlag.fromString(tag);
					if (flag == null) return e.matched(0); // unhandled tag, don't treat as formatting
					if (open) {
						addFlag(flag, proceedingTags);
						proceedingTags++;
					} else {
						removeFlag(flag);
					}
				}
			}

			// since format flags are cumulative, we only need to add the last item if it's an open tag
			switch formatMode {
				#if (sys || nodejs)
				case AsciiTerminal:
					// since format flags are cumulative, we only need to add the last item if it's an open tag
					if (open) {
						if (activeFormatFlagStack.length > 0) {
							var lastFlagCount = groupedProceedingTags[groupedProceedingTags.length - 1] + 1;
							var asciiFormatString = '';
							for (i in 0...lastFlagCount) {
								var idx = groupedProceedingTags.length - 1 - i;
								asciiFormatString += getAsciiFormat(activeFormatFlagStack[idx]);
							}
							return asciiFormatString;
						} else {
							return '';
						}
					} else {
						return 
							getAsciiFormat(FormatFlag.RESET) +
							activeFormatFlagStack.map(function(f) return getAsciiFormat(f))
							.filter(function(s) return s != null)
							.join('');
					}
				#end
				#if js
				case BrowserConsole:
					browserFormatArguments.push(
						activeFormatFlagStack.map(function(f) return getBrowserFormat(f))
						.filter(function(s) return s != null)
						.join(';')
					);
					return '%c';
				#end
				case Disabled:
					return '';
			}
		});

		return {
			formatted: result,
			#if js
			browserFormatArguments: browserFormatArguments,
			#end
		}
	}

	static public function stripFormatting(s: String) {
		return format(s, Disabled).formatted;
	}

	/**
		# Parse formatted message and print to console
		- Apply formatting with HTML-like tags: `<b>bold</b>`
		- Tags are case-insensitive
		- A closing tag without a tag name can be used to close the last-open format tag `</>` so `<b>bold</>` will also work
		- A double-closing tag like `<//>` will clear all active formatting
		- Multiple tags can be combined with comma separation, `<b,i>bold-italic</>`
		- Whitespace is not allowed in tags, so `<b >` would be ignored and printed as-is
		- Tags can be escaped with a leading backslash: `\<b>` would be printed as-is
		- Unknown tags are skipped and will not show up in the output
		- For browser targets, CSS fields and colors can be used, for example: `<{color: red; font-size: 20px}>Inline CSS</>` or `<#FF0000>Red Text</#FF0000>`. These will have no affect on native consoles
	**/
	#if (sys || nodejs)
	public
	#end
	static function printFormatted(s:String = '', outputStream:ConsoleOutputStream = Log){
		var result = format(s, formatMode);

		// for browser consoles we need to call console.log with formatting arguments
		#if js
		if (formatMode == BrowserConsole) {
			#if (!no_console)
			var logArgs = [result.formatted].concat(result.browserFormatArguments);

			#if haxe4
			switch outputStream {
				case Log, Debug: js.Syntax.code('console.log.apply(console, {0})', logArgs);
				case Warn: js.Syntax.code('console.warn.apply(console, {0})', logArgs);
				case Error: js.Syntax.code('console.error.apply(console, {0})', logArgs);
			}
			#elseif haxe3
			switch outputStream {
				case Log, Debug: untyped __js__('console.log.apply(console, {0})', logArgs);
				case Warn: untyped __js__('console.warn.apply(console, {0})', logArgs);
				case Error: untyped __js__('console.error.apply(console, {0})', logArgs);
			}
			#end

			#end
			return;
		}
		#end

		// otherwise we can print with inline escape codes
		print(result.formatted, outputStream);
	}

	#if (sys || nodejs)
	public
	#end
	static function print(s:String = '', outputStream:ConsoleOutputStream = Log){
		// if printIntercept is set then call it first
		// if it returns false then don't print to console
		if (printIntercept != null) {
			var allowDefaultPrint = printIntercept(s, outputStream);
			if (!allowDefaultPrint) {
				return;
			}
		}

		#if (!no_console)

		#if (sys || nodejs)

		// if we're running windows then enable unicode output while printing
		if (unicodeCompatibilityMode == Windows && !unicodeCompatibilityEnabled) {
			exec('chcp 65001');
			unicodeCompatibilityEnabled = true;
		}

		switch outputStream {
			case Log, Debug:
				Sys.stdout().writeString(s);
			case Warn, Error:
				Sys.stderr().writeString(s);
		}

		#elseif js
		// browser log
		#if haxe4
		switch outputStream {
			case Log, Debug: js.Syntax.code('console.log({0})', s);
			case Warn: js.Syntax.code('console.warn({0})', s);
			case Error: js.Syntax.code('console.error({0})', s);
		}
		#elseif haxe3
		switch outputStream {
			case Log, Debug: untyped __js__('console.log({0})', s);
			case Warn: untyped __js__('console.warn({0})', s);
			case Error: untyped __js__('console.error({0})', s);
		}
		#end
		#end

		#end // #if (!no_console)
	}

	// returns empty string for unhandled format
	static function getAsciiFormat(flag:FormatFlag): String {
		// custom hex color
		if ((flag:String).charAt(0) == '#') {
			var hex = (flag:String).substr(1);
			var r = Std.parseInt('0x'+hex.substr(0, 2)), g = Std.parseInt('0x'+hex.substr(2, 2)), b = Std.parseInt('0x'+hex.substr(4, 2));
			return '\033[38;5;' + rgbToAscii256(cast r, cast g, cast b) + 'm';
		}

		// custom hex background
		if ((flag:String).substr(0, 3) == 'bg#') {
			var hex = (flag:String).substr(3);
			var r = Std.parseInt('0x'+hex.substr(0, 2)), g = Std.parseInt('0x'+hex.substr(2, 2)), b = Std.parseInt('0x'+hex.substr(4, 2));
			return '\033[48;5;' + rgbToAscii256(cast r, cast g, cast b) + 'm';
		}

		return switch (flag) {
			case RESET: '\033[m';

			case BOLD: '\033[1m';
			case DIM: '\033[2m';
			case ITALIC: '\033[3m';
			case UNDERLINE: '\033[4m';
			case BLINK: '\033[5m';
			case INVERT: '\033[7m';
			case HIDDEN: '\033[8m';

			case BLACK: '\033[38;5;' + ASCII_BLACK_CODE + 'm';
			case RED: '\033[38;5;' + ASCII_RED_CODE + 'm';
			case GREEN: '\033[38;5;' + ASCII_GREEN_CODE + 'm';
			case YELLOW: '\033[38;5;' + ASCII_YELLOW_CODE + 'm';
			case BLUE: '\033[38;5;' + ASCII_BLUE_CODE + 'm';
			case MAGENTA: '\033[38;5;' + ASCII_MAGENTA_CODE + 'm';
			case CYAN: '\033[38;5;' + ASCII_CYAN_CODE + 'm';
			case WHITE: '\033[38;5;' + ASCII_WHITE_CODE + 'm';
			case LIGHT_BLACK: '\033[38;5;' + ASCII_LIGHT_BLACK_CODE + 'm';
			case LIGHT_RED: '\033[38;5;' + ASCII_LIGHT_RED_CODE + 'm';
			case LIGHT_GREEN: '\033[38;5;' + ASCII_LIGHT_GREEN_CODE + 'm';
			case LIGHT_YELLOW: '\033[38;5;' + ASCII_LIGHT_YELLOW_CODE + 'm';
			case LIGHT_BLUE: '\033[38;5;' + ASCII_LIGHT_BLUE_CODE + 'm';
			case LIGHT_MAGENTA: '\033[38;5;' + ASCII_LIGHT_MAGENTA_CODE + 'm';
			case LIGHT_CYAN: '\033[38;5;' + ASCII_LIGHT_CYAN_CODE + 'm';
			case LIGHT_WHITE: '\033[38;5;' + ASCII_LIGHT_WHITE_CODE + 'm';

			case BG_BLACK: '\033[48;5;' + ASCII_BLACK_CODE + 'm';
			case BG_RED: '\033[48;5;' + ASCII_RED_CODE + 'm';
			case BG_GREEN: '\033[48;5;' + ASCII_GREEN_CODE + 'm';
			case BG_YELLOW: '\033[48;5;' + ASCII_YELLOW_CODE + 'm';
			case BG_BLUE: '\033[48;5;' + ASCII_BLUE_CODE + 'm';
			case BG_MAGENTA: '\033[48;5;' + ASCII_MAGENTA_CODE + 'm';
			case BG_CYAN: '\033[48;5;' + ASCII_CYAN_CODE + 'm';
			case BG_WHITE: '\033[48;5;' + ASCII_WHITE_CODE + 'm';
			case BG_LIGHT_BLACK: '\033[48;5;' + ASCII_LIGHT_BLACK_CODE + 'm';
			case BG_LIGHT_RED: '\033[48;5;' + ASCII_LIGHT_RED_CODE + 'm';
			case BG_LIGHT_GREEN: '\033[48;5;' + ASCII_LIGHT_GREEN_CODE + 'm';
			case BG_LIGHT_YELLOW: '\033[48;5;' + ASCII_LIGHT_YELLOW_CODE + 'm';
			case BG_LIGHT_BLUE: '\033[48;5;' + ASCII_LIGHT_BLUE_CODE + 'm';
			case BG_LIGHT_MAGENTA: '\033[48;5;' + ASCII_LIGHT_MAGENTA_CODE + 'm';
			case BG_LIGHT_CYAN: '\033[48;5;' + ASCII_LIGHT_CYAN_CODE + 'm';
			case BG_LIGHT_WHITE: '\033[48;5;' + ASCII_LIGHT_WHITE_CODE + 'm';
			// return empty string when ascii format flag is not known
			default: return '';
		}
	}

	/*
		Find the best matching ascii color code for a given hex string
		- Ascii 256-color terminals support a subset of 24-bit colors
		- This includes 216 colors and 24 grayscale values
		- Assumes valid hex string
	*/
	static function rgbToAscii256(r:Int, g:Int, b:Int):Null<Int> {
		// Find the nearest value's index in the set
		// A metric like ciede2000 would be better, but this will do for now
		function nearIdx(c:Int, set:Array<Int>){
			var delta = Math.POSITIVE_INFINITY;
			var index = -1;
			for (i in 0...set.length) {
				var d = Math.abs(c - set[i]);
				if (d < delta) {
					delta = d;
					index = i;
				}
			}
			return index;
		}

		inline function clamp(x:Int, min:Int, max:Int){
			return Math.max(Math.min(x, max), min);
		}

		// Colors are index 16 to 231 inclusive = 216 colors
		// Steps are in spaces of 40 except for the first which is 95
		// (0x5f + 40 * (n - 1)) * (n > 0 ? 1 : 0)
		var colorSteps = [0x00, 0x5f, 0x87, 0xaf, 0xd7, 0xff];
		var ir = nearIdx(r, colorSteps), ig = nearIdx(g, colorSteps), ib = nearIdx(b, colorSteps);
		var ier = Math.abs(r - colorSteps[ir]), ieg = Math.abs(g - colorSteps[ig]), ieb = Math.abs(b - colorSteps[ib]);
		var averageColorError = ier + ieg + ieb;

		// Gray scale values are 232 to 255 inclusive = 24 colors
		// Steps are in spaces of 10
		// 0x08 + 10 * n = c
		var jr = Math.round((r - 0x08) / 10), jg = Math.round((g - 0x08) / 10), jb = Math.round((b - 0x08) / 10);
		var jer = Math.abs(r - clamp((jr * 10 + 0x08), 0x08, 0xee));
		var jeg = Math.abs(g - clamp((jg * 10 + 0x08), 0x08, 0xee));
		var jeb = Math.abs(b - clamp((jb * 10 + 0x08), 0x08, 0xee));
		var averageGrayError = jer + jeg + jeb;

		// If we hit an exact grayscale match then use that instead
		if (averageGrayError < averageColorError && r == g && g == b) {
			var grayIndex = jr + 232;
			return grayIndex;
		} else {
			var colorIndex = 16 + ir*36 + ig*6 + ib;
			return colorIndex;
		}
	}

	static function getBrowserFormat(flag:FormatFlag):Null<String> {
		// custom hex color
		if ((flag:String).charAt(0) == '#') {
			return 'color: $flag';
		}

		// custom hex background
		if ((flag:String).substr(0, 3) == 'bg#') {
			return 'background-color: ${(flag:String).substr(2)}';
		}

		// inline CSS - browser consoles only
		if ((flag:String).charAt(0) == '{') {
			// return content as-is but remove enclosing braces
			return (flag:String).substr(1, (flag:String).length - 2);
		}

		return switch (flag) {
			case RESET: '';

			case BOLD: 'font-weight: bold';
			case ITALIC: 'font-style: italic';
			case DIM: 'color: gray';
			case UNDERLINE: 'text-decoration: underline';
			case BLINK: 'text-decoration: blink'; // not supported
			case INVERT: '-webkit-filter: invert(100%); filter: invert(100%)'; // not supported
			case HIDDEN: 'visibility: hidden; color: white'; // not supported

			case BLACK: 'color: black';
			case RED: 'color: red';
			case GREEN: 'color: green';
			case YELLOW: 'color: #f5ba00';
			case BLUE: 'color: blue';
			case MAGENTA: 'color: magenta';
			case CYAN: 'color: cyan';
			case WHITE: 'color: whiteSmoke';

			case LIGHT_BLACK: 'color: gray';
			case LIGHT_RED: 'color: salmon';
			case LIGHT_GREEN: 'color: lightGreen';
			case LIGHT_YELLOW: 'color: #ffed88';
			case LIGHT_BLUE: 'color: lightBlue';
			case LIGHT_MAGENTA: 'color: lightPink';
			case LIGHT_CYAN: 'color: lightCyan';
			case LIGHT_WHITE: 'color: white';

			case BG_BLACK: 'background-color: black';
			case BG_RED: 'background-color: red';
			case BG_GREEN: 'background-color: green';
			case BG_YELLOW: 'background-color: gold';
			case BG_BLUE: 'background-color: blue';
			case BG_MAGENTA: 'background-color: magenta';
			case BG_CYAN: 'background-color: cyan';
			case BG_WHITE: 'background-color: whiteSmoke';
			case BG_LIGHT_BLACK: 'background-color: gray';
			case BG_LIGHT_RED: 'background-color: salmon';
			case BG_LIGHT_GREEN: 'background-color: lightGreen';
			case BG_LIGHT_YELLOW: 'background-color: lightYellow';
			case BG_LIGHT_BLUE: 'background-color: lightBlue';
			case BG_LIGHT_MAGENTA: 'background-color: lightPink';
			case BG_LIGHT_CYAN: 'background-color: lightCyan';
			case BG_LIGHT_WHITE: 'background-color: white';
			// return empty string for unknown format
			default: return '';
		}
	}

	static function determineConsoleFormatMode():Console.ConsoleFormatMode {
		#if (!no_console)

		// browser console test
		#if js

		// if there's a window object, we're probably running in a browser
		var hasWindowObject = 
			#if haxe4
			js.Syntax.typeof(js.Browser.window) != 'undefined';
			#elseif haxe3
			untyped __js__('typeof window !== "undefined"');
			#end
		
		if (hasWindowObject){
			return BrowserConsole;
		}

		#end

		// native unix tput test
		#if (sys || nodejs)
		var tputColors = exec('tput colors');
		if (tputColors.exit == 0) {
			var tputResult = Std.parseInt(tputColors.stdout);
			if (tputResult != null && tputResult > 2) {
				return AsciiTerminal;
			}
		}

		// try checking if we can enable colors in windows
		#if cpp
		var winconVTEnabled = false;

		untyped __cpp__('
			#if defined(HX_WINDOWS) && defined(ENABLE_VIRTUAL_TERMINAL_PROCESSING)
			// Set output mode to handle virtual terminal sequences
			HANDLE hOut = GetStdHandle(STD_OUTPUT_HANDLE);
			DWORD dwMode = 0;
			if (hOut != INVALID_HANDLE_VALUE && GetConsoleMode(hOut, &dwMode))
			{
				dwMode |= ENABLE_VIRTUAL_TERMINAL_PROCESSING;
				{0} = SetConsoleMode(hOut, dwMode);
			}
			#endif
		', winconVTEnabled);

		if (winconVTEnabled) {
			return AsciiTerminal;
		}

		#elseif neko
		if (Sys.systemName() == 'Windows') {
			// try enabling virtual terminal emulation via wincon.ndll
			var enableVTT:Void->Int = neko.Lib.load('wincon', 'enableVTT', 0);
			if (enableVTT() != 0) {
				// successfully enabled ascii escape codes in windows consoles
				return AsciiTerminal;
			}
		}
		#end // neko

		// detect specific TERM environments
		var termEnv = Sys.environment().get('TERM');

		if (termEnv != null && ~/cygwin|xterm|vt100/.match(termEnv)) {
			return AsciiTerminal;
		}
		#end // (sys || nodejs)

		#end // (!no_console)

		return Disabled;
	}

	#if macro
	static function joinArgExprs(rest:Array<Expr>):ExprOf<String> {
		var msg:Expr = macro '';
		for(i in 0...rest.length){
			var e = rest[i];
			msg = macro $msg + Std.string(cast $e);
			if (i != rest.length - 1){
				msg = macro $msg + '$argSeparator';
			}
		}
		return msg;
	}
	#end

	#if (sys || nodejs)
	static function exec(cmd: String, ?args:Array<String>) {
		#if (nodejs)
		//hxnodejs doesn't support sys.io.Process yet
		var p = js.node.ChildProcess.spawnSync(cmd, args != null ? args : [], {});
		var stdout = (p.stdout:js.node.Buffer) == null ? '' : (p.stdout:js.node.Buffer).toString();
		if (stdout == null) stdout = '';
		return {
			exit: p.status,
			stdout: stdout
		}
		#else
		try {
			var p = new sys.io.Process(cmd, args);
			var exit = p.exitCode(); // assumed to block
			var stdout = p.stdout.readAll().toString();
			p.close();
			return {
				exit: exit,
				stdout: stdout,
			}
		} catch (e: Dynamic) {
			return {
				exit: 1,
				stdout: ''
			}
		}
		#end
	}
	#end

}

@:enum
abstract ConsoleOutputStream(Int) {
	var Log = 0;
	var Warn = 1;
	var Error = 2;
	var Debug = 3;
}

@:enum
abstract ConsoleFormatMode(Int) {
	#if (sys || nodejs)
	var AsciiTerminal = 0;
	#end
	#if js
	// Only enable browser console output on js targets
	var BrowserConsole = 1;
	#end
	var Disabled = 2;
}

@:enum
abstract UnicodeCompatibilityMode(Int) {
	var None = 0;
	var Windows = 1;
}

@:enum
abstract FormatFlag(String) to String {
	var RESET = 'reset';
	var BOLD = 'bold';
	var ITALIC = 'italic';
	var DIM = 'dim';
	var UNDERLINE = 'underline';
	var BLINK = 'blink';
	var INVERT = 'invert';
	var HIDDEN = 'hidden';
	var BLACK = 'black';
	var RED = 'red';
	var GREEN = 'green';
	var YELLOW = 'yellow';
	var BLUE = 'blue';
	var MAGENTA = 'magenta';
	var CYAN = 'cyan';
	var WHITE = 'white';
	var LIGHT_BLACK = 'light_black';
	var LIGHT_RED = 'light_red';
	var LIGHT_GREEN = 'light_green';
	var LIGHT_YELLOW = 'light_yellow';
	var LIGHT_BLUE = 'light_blue';
	var LIGHT_MAGENTA = 'light_magenta';
	var LIGHT_CYAN = 'light_cyan';
	var LIGHT_WHITE = 'light_white';
	var BG_BLACK = 'bg_black';
	var BG_RED = 'bg_red';
	var BG_GREEN = 'bg_green';
	var BG_YELLOW = 'bg_yellow';
	var BG_BLUE = 'bg_blue';
	var BG_MAGENTA = 'bg_magenta';
	var BG_CYAN = 'bg_cyan';
	var BG_WHITE = 'bg_white';
	var BG_LIGHT_BLACK = 'bg_light_black';
	var BG_LIGHT_RED = 'bg_light_red';
	var BG_LIGHT_GREEN = 'bg_light_green';
	var BG_LIGHT_YELLOW = 'bg_light_yellow';
	var BG_LIGHT_BLUE = 'bg_light_blue';
	var BG_LIGHT_MAGENTA = 'bg_light_magenta';
	var BG_LIGHT_CYAN = 'bg_light_cyan';
	var BG_LIGHT_WHITE = 'bg_light_white';

	@:from
	static public function fromString(str:String) {
		str = str.toLowerCase();

		// normalize hex colors
		if (str.charAt(0) == '#' || str.substr(0, 3) == 'bg#') {
			var hIdx = str.indexOf('#');
			var hex = str.substr(hIdx + 1);

			// expand shorthand hex
			if (hex.length == 3) {
				var a = hex.split('');
				hex = [a[0], a[0], a[1], a[1], a[2], a[2]].join('');
			}

			// validate hex
			if((~/[^0-9a-f]/i).match(hex) || hex.length < 6) {
				// hex contains a non-hexadecimal character or it's too short
				return untyped ''; // return empty flag, which has no formatting rules
			}

			var normalized = str.substring(0, hIdx) + '#' + hex;

			return untyped normalized;
		}

		// handle aliases
		return switch str {
			case '/': RESET;
			case '!': INVERT;
			case 'u': UNDERLINE;
			case 'b': BOLD;
			case 'i': ITALIC;
			case 'gray': LIGHT_BLACK;
			case 'bg_gray': BG_LIGHT_BLACK;
			default: cast str;
		}
	}
}

@:enum
abstract AsciiColorCodes(Int){
	var ASCII_BLACK_CODE = 0;
	var ASCII_RED_CODE = 1;
	var ASCII_GREEN_CODE = 2;
	var ASCII_YELLOW_CODE = 3;
	var ASCII_BLUE_CODE = 4;
	var ASCII_MAGENTA_CODE = 5;
	var ASCII_CYAN_CODE = 6;
	var ASCII_WHITE_CODE = 7;
	var ASCII_LIGHT_BLACK_CODE = 8;
	var ASCII_LIGHT_RED_CODE = 9;
	var ASCII_LIGHT_GREEN_CODE = 10;
	var ASCII_LIGHT_YELLOW_CODE = 11;
	var ASCII_LIGHT_BLUE_CODE = 12;
	var ASCII_LIGHT_MAGENTA_CODE = 13;
	var ASCII_LIGHT_CYAN_CODE = 14;
	var ASCII_LIGHT_WHITE_CODE = 15;
}