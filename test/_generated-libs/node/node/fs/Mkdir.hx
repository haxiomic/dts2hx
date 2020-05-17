package node.fs;

/**
	Asynchronous mkdir(2) - create a directory.
	
	Asynchronous mkdir(2) - create a directory with a mode of `0o777`.
**/
@:jsRequire("fs", "mkdir") @valueModuleOnly extern class Mkdir {
	/**
		Asynchronous mkdir(2) - create a directory.
	**/
	@:overload(function(path:PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	@:selfCall
	static function call(path:PathLike, options:Null<ts.AnyOf3<String, Float, MakeDirectoryOptions>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}