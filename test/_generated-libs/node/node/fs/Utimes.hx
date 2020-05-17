package node.fs;

/**
	Asynchronously change file timestamps of the file referenced by the supplied path.
**/
@:jsRequire("fs", "utimes") @valueModuleOnly extern class Utimes {
	/**
		Asynchronously change file timestamps of the file referenced by the supplied path.
	**/
	@:selfCall
	static function call(path:PathLike, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}