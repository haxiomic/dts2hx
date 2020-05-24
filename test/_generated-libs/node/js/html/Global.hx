package js.html;

@:native("") extern class Global {
	@:overload(function(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):global.nodejs.Timeout { })
	static function setTimeout(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	@:overload(function(timeoutId:global.nodejs.Timeout):Void { })
	static function clearTimeout(?handle:Float):Void;
	@:overload(function(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):global.nodejs.Timeout { })
	static function setInterval(handler:js.html.TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	@:overload(function(intervalId:global.nodejs.Timeout):Void { })
	static function clearInterval(?handle:Float):Void;
	@:overload(function(callback:() -> Void):Void { })
	static function queueMicrotask(callback:haxe.Constraints.Function):Void;
	static var console : js.html.Console;
}