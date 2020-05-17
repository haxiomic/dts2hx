package node.fs;

/**
	Asynchronous chmod(2) - Change permissions of a file.
**/
@:jsRequire("fs", "chmod") @valueModuleOnly extern class Chmod {
	/**
		Asynchronous chmod(2) - Change permissions of a file.
	**/
	@:selfCall
	static function call(path:PathLike, mode:ts.AnyOf2<String, Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}