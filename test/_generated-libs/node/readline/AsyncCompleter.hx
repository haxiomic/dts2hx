package node.readline;
typedef AsyncCompleter = (line:String, callback:ts.AnyOf3<() -> Void, (err:ts.lib.IError) -> Void, (err:ts.lib.IError, result:CompleterResult) -> Void>) -> Dynamic;