package node.fs;
/**
	Asynchronous chmod(2) - Change permissions of a file.
**/
@:jsRequire("fs", "chmod") extern class Chmod {
	/**
		Asynchronous chmod(2) - Change permissions of a file.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, mode:haxe.extern.EitherType<String, Float>):js.lib.Promise<Void>;
}