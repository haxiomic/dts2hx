package node.fs;
/**
	Asynchronous open(2) - open and possibly create a file.
	
	
	
	Asynchronous open(2) - open and possibly create a file. If the file is created, its mode will be `0o666`.
**/
@:jsRequire("fs", "open") extern class Open {
	/**
		Asynchronous open(2) - open and possibly create a file.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, flags:haxe.extern.EitherType<String, Float>, ?mode:haxe.extern.EitherType<String, Float>):js.lib.Promise<Float>;
}