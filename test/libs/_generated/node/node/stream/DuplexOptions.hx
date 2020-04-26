package node.stream;
extern interface DuplexOptions extends ReadableOptions extends WritableOptions {
	@:optional
	var allowHalfOpen : Null<Bool>;
	@:optional
	var readableObjectMode : Null<Bool>;
	@:optional
	var writableObjectMode : Null<Bool>;
	@:optional
	function read(size:Float):Void;
	@:optional
	function write(chunk:Any, encoding:String, callback:(?error:js.lib.Error) -> Void):Void;
	@:optional
	function writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.Error) -> Void):Void;
	@:native("final")
	@:optional
	function final_(callback:(?error:js.lib.Error) -> Void):Void;
	@:optional
	function destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
}