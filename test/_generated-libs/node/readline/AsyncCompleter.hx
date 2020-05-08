package node.readline;
typedef AsyncCompleter = (line:String, callback:ts.AnyOf3<() -> Void, (err:ts.lib.Error) -> Void, (err:ts.lib.Error, result:CompleterResult) -> Void>) -> Dynamic;