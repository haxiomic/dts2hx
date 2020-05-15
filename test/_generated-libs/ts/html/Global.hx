package ts.html;
@:native("") extern class Global {
	@:overload(function(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):global.nodejs.Timeout { })
	static function setTimeout(handler:ts.html.TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	@:overload(function(timeoutId:global.nodejs.Timeout):Void { })
	static function clearTimeout(?handle:Float):Void;
	@:overload(function(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):global.nodejs.Timeout { })
	static function setInterval(handler:ts.html.TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	@:overload(function(intervalId:global.nodejs.Timeout):Void { })
	static function clearInterval(?handle:Float):Void;
	@:overload(function(callback:() -> Void):Void { })
	static function queueMicrotask(callback:js.lib.Function):Void;
	static var console : ts.html.Console;
}