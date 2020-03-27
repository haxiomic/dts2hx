import typescript.ts.SourceFile;
import typescript.ts.Node;
import typescript.ts.SyntaxKind;

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

    public function log(?arg: Any, ?node: typescript.ts.Node, ?symbol: typescript.ts.Symbol) {
        var str = createMessage(arg, node, symbol);
        if (printLogs) {
            Console.log(str);
        }
        logs.push(str);
    }

    public function warn(?arg: Any, ?node: typescript.ts.Node, ?symbol: typescript.ts.Symbol) {
        var str = createMessage(arg, node, symbol);
        if (printWarnings) {
            Console.warn(str);
        }
        warnings.push(str);
    }

    public function error(?arg: Any, ?node: typescript.ts.Node, ?symbol: typescript.ts.Symbol) {
        var str = createMessage(arg, node, symbol);
        if (printErrors) {
            Console.error(str);
        }
        errors.push(str);
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

    public function getSyntaxKindName(kind: SyntaxKind): String {
        return js.Syntax.code('require("typescript").SyntaxKind[{0}]', kind);
    }

    function createMessage(?arg: Any, ?node: typescript.ts.Node, ?symbol: typescript.ts.Symbol): String {
        var str = Std.string(arg);
        if (node != null) {
            str += ' <dim>(${nodeInfo(node)})</>';
        }
        if (symbol != null) {
            str += ' <dim>(${symbolInfo(symbol)})</>';
        }
        return str;
    }

    function joinArgs(args: Array<Any>) {
        return args.filter(arg -> arg != null).join(', ');
    }

    function symbolInfo(symbol: typescript.ts.Symbol): String {
        var str = '<b,cyan>${symbol.name}</>';
        if (symbol.valueDeclaration != null) {
            str += ' ' + nodeInfo(symbol.valueDeclaration);
        } else if (symbol.declarations != null && symbol.declarations[0] != null) {
            str += ' ' + nodeInfo(symbol.declarations[0]);
        }
        return str;
    }
    
    function nodeInfo(node: typescript.ts.Node): String {
        return '<magenta>${getSyntaxKindName(node.kind)}</> ${formatLocation({ sourceFile: node.getSourceFile(), start: node.getStart() })}';
    }
}