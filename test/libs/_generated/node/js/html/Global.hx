package js.html;
@:native("") extern class Global {
	@:overload(function(callback:(args:std.Array<Any>) -> Void, ms:Float, args:std.Array<Any>):global.nodejs.Timeout { })
	static function setTimeout(handler:haxe.extern.EitherType<String, js.lib.Function>, ?timeout:Float, arguments:std.Array<Any>):Float;
	@:overload(function(timeoutId:global.nodejs.Timeout):Void { })
	static function clearTimeout(?handle:Float):Void;
	@:overload(function(callback:(args:std.Array<Any>) -> Void, ms:Float, args:std.Array<Any>):global.nodejs.Timeout { })
	static function setInterval(handler:haxe.extern.EitherType<String, js.lib.Function>, ?timeout:Float, arguments:std.Array<Any>):Float;
	@:overload(function(intervalId:global.nodejs.Timeout):Void { })
	static function clearInterval(?handle:Float):Void;
	@:overload(function(callback:() -> Void):Void { })
	static function queueMicrotask(callback:js.lib.Function):Void;
	static var console : js.html.Console;
}