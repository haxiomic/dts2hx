package node;
@:jsRequire("timers") extern class Timers {
	static function setTimeout(callback:(args:std.Array<Any>) -> Void, ms:Float, args:std.Array<Any>):global.nodejs.Timeout;
	static function clearTimeout(timeoutId:global.nodejs.Timeout):Void;
	static function setInterval(callback:(args:std.Array<Any>) -> Void, ms:Float, args:std.Array<Any>):global.nodejs.Timeout;
	static function clearInterval(intervalId:global.nodejs.Timeout):Void;
	static function setImmediate(callback:(args:std.Array<Any>) -> Void, args:std.Array<Any>):global.nodejs.Immediate;
	static function clearImmediate(immediateId:global.nodejs.Immediate):Void;
}