package global.nodejs;
extern typedef WriteStream = Socket & { final writableHighWaterMark : Float; final writableLength : Float; @:optional
	var columns : Float; @:optional
	var rows : Float; function _write(chunk:Any, encoding:String, callback:(?err:js.lib.Error) -> Void):Void; function _destroy(err:Null<js.lib.Error>, callback:(?err:js.lib.Error) -> Void):Void; function _final(callback:(?err:js.lib.Error) -> Void):Void; function setDefaultEncoding(encoding:String):WriteStream; function cork():Void; function uncork():Void; function destroy(?error:js.lib.Error):Void; };