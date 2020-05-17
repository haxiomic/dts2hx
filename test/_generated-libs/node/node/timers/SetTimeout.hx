package node.timers;

@:jsRequire("timers", "setTimeout") @valueModuleOnly extern class SetTimeout {
	@:selfCall
	static function call(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):global.nodejs.Timeout;
}