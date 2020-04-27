package node.stream;
extern typedef DuplexOptions = ReadableOptions & WritableOptions & { @:optional
	var allowHalfOpen : Bool; @:optional
	var readableObjectMode : Bool; @:optional
	var writableObjectMode : Bool; @:optional
	function read(size:Float):Void; @:optional
	function write(chunk:Any, encoding:String, callback:(?error:js.lib.Error) -> Void):Void; @:optional
	function writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.Error) -> Void):Void; @:native("final")
	@:optional
	function final_(callback:(?error:js.lib.Error) -> Void):Void; @:optional
	function destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void; };