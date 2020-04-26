package node.readline;
typedef AsyncCompleter = (line:String, callback:(?err:js.lib.Error, ?result:js.lib.Tuple2<Any, std.Array<String>, String>) -> Void) -> Any;