package js.html;

@:native("setTimeout") @valueModuleOnly extern class SetTimeout {
	@:overload(function(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):global.nodejs.Timeout { })
	@:selfCall
	static function call(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
}