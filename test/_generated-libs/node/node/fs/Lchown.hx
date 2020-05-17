package node.fs;

/**
	Asynchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
**/
@:jsRequire("fs", "lchown") @valueModuleOnly extern class Lchown {
	/**
		Asynchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
	**/
	@:selfCall
	static function call(path:PathLike, uid:Float, gid:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}