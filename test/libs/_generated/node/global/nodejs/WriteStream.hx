package global.nodejs;
extern interface WriteStream extends Socket {
	final writableHighWaterMark : Float;
	final writableLength : Float;
	@:optional
	var columns : Null<Float>;
	@:optional
	var rows : Null<Float>;
	function _write(chunk:Any, encoding:String, callback:(?err:js.lib.Error) -> Void):Void;
	function _destroy(err:Null<js.lib.Error>, callback:(?err:js.lib.Error) -> Void):Void;
	function _final(callback:(?err:js.lib.Error) -> Void):Void;
	function setDefaultEncoding(encoding:String):WriteStream;
	function cork():Void;
	function uncork():Void;
	function destroy(?error:js.lib.Error):Void;
}