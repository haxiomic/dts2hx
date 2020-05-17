package node.fs;

/**
	Asynchronous rmdir(2) - delete a directory.
**/
@:jsRequire("fs", "rmdir") @valueModuleOnly extern class Rmdir {
	/**
		Asynchronous rmdir(2) - delete a directory.
	**/
	@:selfCall
	static function call(path:PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}