package node.fs;
/**
	Asynchronous rmdir(2) - delete a directory.
**/
@:jsRequire("fs", "rmdir") @valueModuleOnly extern class Rmdir {
	/**
		Asynchronous rmdir(2) - delete a directory.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):js.lib.Promise<Void>;
}