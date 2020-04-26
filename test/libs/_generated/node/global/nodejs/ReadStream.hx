package global.nodejs;
extern interface ReadStream extends Socket {
	final readableHighWaterMark : Float;
	final readableLength : Float;
	@:optional
	var isRaw : Null<Bool>;
	@:optional
	function setRawMode(mode:Bool):Void;
	function _read(size:Float):Void;
	function _destroy(err:Null<js.lib.Error>, callback:(?err:js.lib.Error) -> Void):Void;
	function push(chunk:Any, ?encoding:String):Bool;
	function destroy(?error:js.lib.Error):Void;
}