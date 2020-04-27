package node.fs;
/**
	Asynchronous truncate(2) - Truncate a file to a specified length.
	
	
	
	Asynchronous truncate(2) - Truncate a file to a specified length.
**/
@:jsRequire("fs", "truncate") extern class Truncate {
	/**
		Asynchronous truncate(2) - Truncate a file to a specified length.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?len:Float):js.lib.Promise<Void>;
}