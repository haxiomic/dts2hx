package node.fs;

/**
	Asynchronous unlink(2) - delete a name and possibly the file it refers to.
**/
@:jsRequire("fs", "unlink") @valueModuleOnly extern class Unlink {
	/**
		Asynchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	@:selfCall
	static function call(path:PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}