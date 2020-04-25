package node.readline;
typedef AsyncCompleter = (line:String, callback:(err:Null<js.lib.Error>, result:Null<js.lib.Tuple2<Any, std.Array<String>, String>>) -> Void) -> Any;