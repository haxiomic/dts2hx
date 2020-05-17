package node.fs;

/**
	Asynchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
**/
@:jsRequire("fs", "lchmod") @valueModuleOnly extern class Lchmod {
	/**
		Asynchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	@:selfCall
	static function call(path:PathLike, mode:ts.AnyOf2<String, Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}