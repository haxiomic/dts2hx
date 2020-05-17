package global;

@:native("setImmediate") @valueModuleOnly extern class SetImmediate {
	@:selfCall
	static function call(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, args:haxe.extern.Rest<Dynamic>):global.nodejs.Immediate;
}