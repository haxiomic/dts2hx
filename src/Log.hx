import tool.TsSymbolTools;
import tool.TsSyntaxTools;
import typescript.Ts;
import typescript.ts.Symbol;
import typescript.ts.Diagnostic;
import typescript.ts.SourceFile;
import typescript.ts.Node;
import typescript.ts.SyntaxKind;

using tool.TsTypeTools;

// avoid node.js `Node`
private typedef TsNode = typescript.ts.Node;
private typedef TsType = typescript.ts.Type;

enum abstract LogLevel(Int) to Int {
	var None = 0;
	var Error = 1;
	var Warning = 2;
	var Logs = 3;
	var All = 4;
}

class Log {

	static public var logs = new Array<String>();
	static public var warnings = new Array<String>();
	static public var errors = new Array<String>();

	static var printLogs: Bool = true;
	static var printWarnings: Bool = true;
	static var printErrors: Bool = true;

	static public function setPrintLogLevel(level: LogLevel) {
		printLogs = (level: Int) >= (Logs: Int);
		printWarnings = (level: Int) >= (Warning: Int);
		printErrors = (level: Int) >= (Error: Int);
	}

	static public function clearAllLogs() {
		logs = [];
		warnings = [];
		errors = [];
	}

	static public function log(?message: String, ?node: TsNode, ?symbol: Symbol, ?type: TsType, ?diagnostic: Diagnostic) {
		var str = createMessage(message, node, symbol, type, diagnostic);
		if (printLogs) {
			Console.log(str);
		}
		logs.push(str);
	}

	static public function warn(?message: String, ?node: TsNode, ?symbol: Symbol, ?type: TsType, ?diagnostic: Diagnostic) {
		var str = createMessage(message, node, symbol, type, diagnostic);
		if (printWarnings) {
			Console.warn(str);
		}
		warnings.push(str);
	}

	static public function error(?message: String, ?node: TsNode, ?symbol: Symbol, ?type: TsType, ?diagnostic: Diagnostic) {
		var str = createMessage(message, node, symbol, type, diagnostic);
		if (printErrors) {
			Console.error(str);
		}
		errors.push(str);
	}

	static public function diagnostics(?message: String, ?array: Array<Diagnostic>) {
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

	static public function formatLocation(location: {
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

	static public function symbolInfo(symbol: Symbol): String {
		var str = '<b,cyan>${symbol.name} ${TsSymbolTools.getFlagsInfo(symbol)}</>';
		if (symbol.valueDeclaration != null) {
			str += ' ' + nodeInfo(symbol.valueDeclaration);
		} else if (symbol.declarations != null && symbol.declarations[0] != null) {
			str += ' ' + nodeInfo(symbol.declarations[0]);
		}
		return str;
	}

	static public function nodeInfo(node: TsNode): String {
		return '<magenta>${TsSyntaxTools.getSyntaxKindName(node.kind)}</>${
			try ' ' + formatLocation({ sourceFile: node.getSourceFile(), start: node.getStart() }) catch (e: Any) ''
		}';
	}

	static public function typeInfo(type: TsType) {
		return '<blue>${type.getFlagsInfo()}</>${type.symbol != null ? ' ' + symbolInfo(type.symbol) : ''}';
	}

	static function createMessage(?arg: Any, ?node: TsNode, ?symbol: Symbol, ?type: TsType, ?diagnostic: Diagnostic): String {
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
		if (type != null) {
			parts.push('<dim>(${typeInfo(type)})</>');
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

	static function joinArgs(args: Array<Any>) {
		return args.filter(arg -> arg != null).join(', ');
	}
}