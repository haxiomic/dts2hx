package node.readline;
extern typedef ReadLineOptions = { var input : global.nodejs.ReadableStream; @:optional
	var output : global.nodejs.WritableStream; @:optional
	var completer : haxe.extern.EitherType<(line:String) -> js.lib.Tuple2<std.Array<String>, String>, (line:String, callback:(?err:js.lib.Error, ?result:js.lib.Tuple2<std.Array<String>, String>) -> Void) -> Any>; @:optional
	var terminal : Bool; @:optional
	var historySize : Float; @:optional
	var prompt : String; @:optional
	var crlfDelay : Float; @:optional
	var removeHistoryDuplicates : Bool; };