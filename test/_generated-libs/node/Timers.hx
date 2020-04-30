package node;
@:jsRequire("timers") @valueModuleOnly extern class Timers {
	static function setTimeout(callback:(args:haxe.extern.Rest<Any>) -> Void, ms:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timeout;
	static function clearTimeout(timeoutId:global.nodejs.Timeout):Void;
	static function setInterval(callback:(args:haxe.extern.Rest<Any>) -> Void, ms:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timeout;
	static function clearInterval(intervalId:global.nodejs.Timeout):Void;
	static function setImmediate(callback:(args:haxe.extern.Rest<Any>) -> Void, args:haxe.extern.Rest<Any>):global.nodejs.Immediate;
	static function clearImmediate(immediateId:global.nodejs.Immediate):Void;
}