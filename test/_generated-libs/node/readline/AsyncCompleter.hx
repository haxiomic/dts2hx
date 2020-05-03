package node.readline;
typedef AsyncCompleter = (line:String, callback:(?err:ts.lib.IError, ?result:CompleterResult) -> Void) -> Dynamic;