package typescript;



@:native('')
final extern class Global {
	static function setTimeout(handler: (args: haxe.extern.Rest<Any>) -> Void, timeout: Float): Any;
	static function clearTimeout(handle: Any): Void;
}

