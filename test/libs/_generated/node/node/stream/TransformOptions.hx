package node.stream;
extern interface TransformOptions extends DuplexOptions {
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
	@:optional
	function transform(chunk:Any, encoding:String, callback:(?error:js.lib.Error, ?data:Any) -> Void):Void;
	@:optional
	function flush(callback:(?error:js.lib.Error, ?data:Any) -> Void):Void;
}