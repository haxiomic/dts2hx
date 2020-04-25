package node.stream;
extern interface WritableOptions {
	@:optional
	var highWaterMark : Null<Float>;
	@:optional
	var decodeStrings : Null<Bool>;
	@:optional
	var objectMode : Null<Bool>;
	@:optional
	function write(chunk:Any, encoding:String, callback:(error:Null<js.lib.Error>) -> Void):Void;
	@:optional
	function writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(error:Null<js.lib.Error>) -> Void):Void;
	@:optional
	function destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
	@:native("final")
	@:optional
	function final_(callback:(error:Null<js.lib.Error>) -> Void):Void;
}