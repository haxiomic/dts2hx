package node.readline.promises;

typedef Completer = (line:String) -> ts.AnyOf2<node.readline.CompleterResult, js.lib.Promise<node.readline.CompleterResult>>;