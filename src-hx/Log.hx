import tool.TsSymbolTools;
import tool.TsSyntaxTools;
import typescript.Ts;
import typescript.ts.Symbol;
import typescript.ts.Diagnostic;
import typescript.ts.SourceFile;
import typescript.ts.Node;
import typescript.ts.SyntaxKind;

// avoid node.js `Node`
typedef TsNode = typescript.ts.Node;

enum abstract LogLevel(Int) to Int {
	var None = 0;
	var Error = 1;
	var Warning = 2;
	var Logs = 3;
	var All = 4;
}

class Log {

	public final logs = new Array<String>();
	public final warnings = new Array<String>();
	public final errors = new Array<String>();

	var printLogs: Bool;
	var printWarnings: Bool;
	var printErrors: Bool;

	public function new(?printLogLevel: LogLevel = All) {
		setPrintLogLevel(printLogLevel);
	}

	public function setPrintLogLevel(level: LogLevel) {
		printLogs = (level: Int) >= (Logs: Int);
		printWarnings = (level: Int) >= (Warning: Int);
		printErrors = (level: Int) >= (Error: Int);
	}

	public function log(?message: String, ?node: TsNode, ?symbol: Symbol, ?diagnostic: Diagnostic) {
		var str = createMessage(message, node, symbol, diagnostic);
		if (printLogs) {
			Console.log(str);
		}
		logs.push(str);
	}

	public function warn(?message: String, ?node: TsNode, ?symbol: Symbol, ?diagnostic: Diagnostic) {
		var str = createMessage(message, node, symbol, diagnostic);
		if (printWarnings) {
			Console.warn(str);
		}
		warnings.push(str);
	}

	public function error(?message: String, ?node: TsNode, ?symbol: Symbol, ?diagnostic: Diagnostic) {
		var str = createMessage(message, node, symbol, diagnostic);
		if (printErrors) {
			Console.error(str);
		}
		errors.push(str);
	}

	public function diagnostics(?message: String, ?array: Array<Diagnostic>) {
		if (array == null) array = [];
		for (diagnostic in array) {
			switch diagnostic.category {
				case Error: error(message, diagnostic);
				case Warning: warn(message, diagnostic);
				case Message: log(message, diagnostic);
				case Suggestion: log(message, diagnostic);
			}
		}
	}

	public function formatLocation(location: {
		sourceFile: SourceFile,
		start: Null<Float>,
	}) {
		if (location.start != null) {
			var lineAndCharacter = location.sourceFile.getLineAndCharacterOfPosition(location.start);
			var line = lineAndCharacter.line;
			var character = lineAndCharacter.character;
			return '${location.sourceFile.fileName}:${line + 1}${character > 0 ? ':${character + 1}' : ''}';
		} else {
			return '${location.sourceFile.fileName}';
		}
	}

	function createMessage(?arg: Any, ?node: TsNode, ?symbol: Symbol, ?diagnostic: Diagnostic): String {
		var parts = new Array<String>();
		if (arg != null) {
			parts.push(Std.string(arg));
		}
		if (node != null) {
			parts.push('<dim>(${nodeInfo(node)})</>');
		}
		if (symbol != null) {
			parts.push('<dim>(${symbolInfo(symbol)})</>');
		}
		if (diagnostic != null) {
			var message = '<b>[TypeScript ${Ts.versionMajorMinor}]</> ${diagnostic.messageText}';
			if (diagnostic.file != null) {
				message += ' <dim>(${formatLocation({
					sourceFile: diagnostic.file,
					start: diagnostic.start
				})})</>';
			}
			parts.push(message);
		}
		return parts.join(' ');
	}

	function joinArgs(args: Array<Any>) {
		return args.filter(arg -> arg != null).join(', ');
	}

	function symbolInfo(symbol: Symbol): String {
		var str = '<b,cyan>${symbol.name} ${TsSymbolTools.getFlagsInfo(symbol)}</>';
		if (symbol.valueDeclaration != null) {
			str += ' ' + nodeInfo(symbol.valueDeclaration);
		} else if (symbol.declarations != null && symbol.declarations[0] != null) {
			str += ' ' + nodeInfo(symbol.declarations[0]);
		}
		return str;
	}
	
	function nodeInfo(node: TsNode): String {
		return '<magenta>${TsSyntaxTools.getSyntaxKindName(node.kind)}</> ${formatLocation({ sourceFile: node.getSourceFile(), start: node.getStart() })}';
	}
}