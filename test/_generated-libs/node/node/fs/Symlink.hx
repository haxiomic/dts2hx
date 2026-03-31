package node.fs;

/**
	Asynchronous symlink(2) - Create a new symbolic link to an existing file.
**/
@:jsRequire("fs", "symlink") @valueModuleOnly extern class Symlink {
	/**
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	@:overload(function(target:PathLike, path:PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	@:selfCall
	static function call(target:PathLike, path:PathLike, type:Null<node.fs.symlink.Type_>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}