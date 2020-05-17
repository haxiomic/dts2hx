package node.fs;

/**
	Asynchronous lstat(2) - Get file status. Does not dereference symbolic links.
**/
@:jsRequire("fs", "lstat") @valueModuleOnly extern class Lstat {
	/**
		Asynchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	@:selfCall
	static function call(path:PathLike, callback:(err:global.nodejs.ErrnoException, stats:Stats) -> Void):Void;
}