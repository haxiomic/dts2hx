package js.html;

@:native("") extern class Global {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
	**/
	@:overload(function(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):global.nodejs.Timeout { })
	static function setTimeout(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/clearTimeout)
	**/
	@:overload(function(timeoutId:global.nodejs.Timeout):Void { })
	static function clearTimeout(id:Null<Float>):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setInterval)
	**/
	@:overload(function(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):global.nodejs.Timeout { })
	static function setInterval(handler:js.html.TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/clearInterval)
	**/
	@:overload(function(intervalId:global.nodejs.Timeout):Void { })
	static function clearInterval(id:Null<Float>):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/queueMicrotask)
	**/
	@:overload(function(callback:() -> Void):Void { })
	static function queueMicrotask(callback:js.html.VoidFunction):Void;
	static var console : js.html.Console;
}