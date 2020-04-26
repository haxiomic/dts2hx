package node.readline;
extern interface ReadLineOptions {
	var input : global.nodejs.ReadableStream;
	@:optional
	var output : Null<global.nodejs.WritableStream>;
	@:optional
	var completer : Null<haxe.extern.EitherType<(line:String) -> js.lib.Tuple2<Any, std.Array<String>, String>, (line:String, callback:(?err:js.lib.Error, ?result:js.lib.Tuple2<Any, std.Array<String>, String>) -> Void) -> Any>>;
	@:optional
	var terminal : Null<Bool>;
	@:optional
	var historySize : Null<Float>;
	@:optional
	var prompt : Null<String>;
	@:optional
	var crlfDelay : Null<Float>;
	@:optional
	var removeHistoryDuplicates : Null<Bool>;
}