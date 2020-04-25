package node.fs;
/**
	Asynchronous lstat(2) - Get file status. Does not dereference symbolic links.
**/
@:jsRequire("fs", "lstat") extern class Lstat {
	/**
		Asynchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):js.lib.Promise<Stats>;
}