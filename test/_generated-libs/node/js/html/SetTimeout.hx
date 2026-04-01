package js.html;

/**
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
**/
@:native("setTimeout") @valueModuleOnly extern class SetTimeout {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
	**/
	@:overload(function(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):global.nodejs.Timeout { })
	@:selfCall
	static function call(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
}