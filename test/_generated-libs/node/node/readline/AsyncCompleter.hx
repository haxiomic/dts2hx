package node.readline;

typedef AsyncCompleter = (line:String, callback:ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, result:CompleterResult) -> Void>) -> Dynamic;