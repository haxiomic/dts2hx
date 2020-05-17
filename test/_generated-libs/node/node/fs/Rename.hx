package node.fs;

/**
	Asynchronous rename(2) - Change the name or location of a file or directory.
**/
@:jsRequire("fs", "rename") @valueModuleOnly extern class Rename {
	/**
		Asynchronous rename(2) - Change the name or location of a file or directory.
	**/
	@:selfCall
	static function call(oldPath:PathLike, newPath:PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}