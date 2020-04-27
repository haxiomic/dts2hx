package node.fs;
/**
	Asynchronous unlink(2) - delete a name and possibly the file it refers to.
**/
@:jsRequire("fs", "unlink") @valueModuleOnly extern class Unlink {
	/**
		Asynchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):js.lib.Promise<Void>;
}