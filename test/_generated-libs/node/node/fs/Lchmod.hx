package node.fs;
/**
	Asynchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
**/
@:jsRequire("fs", "lchmod") extern class Lchmod {
	/**
		Asynchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, mode:haxe.extern.EitherType<String, Float>):js.lib.Promise<Void>;
}