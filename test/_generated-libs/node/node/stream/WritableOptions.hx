package node.stream;
extern interface WritableOptions {
	@:optional
	var highWaterMark : Float;
	@:optional
	var decodeStrings : Bool;
	@:optional
	var objectMode : Bool;
	@:optional
	function write(chunk:Any, encoding:String, callback:(?error:js.lib.Error) -> Void):Void;
	@:optional
	function writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.Error) -> Void):Void;
	@:optional
	function destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
	@:native("final")
	@:optional
	function final_(callback:(?error:js.lib.Error) -> Void):Void;
}