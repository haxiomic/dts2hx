package node.readline;
typedef AsyncCompleter = (line:String, callback:(?err:ts.lib.IError, ?result:ts.lib.Tuple2<std.Array<String>, String>) -> Void) -> Any;