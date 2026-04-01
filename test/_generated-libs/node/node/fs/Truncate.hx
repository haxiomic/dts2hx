package node.fs;

/**
	Asynchronous truncate(2) - Truncate a file to a specified length.
**/
@:jsRequire("fs", "truncate") @valueModuleOnly extern class Truncate {
	/**
		Asynchronous truncate(2) - Truncate a file to a specified length.
	**/
	@:overload(function(path:PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	@:selfCall
	static function call(path:PathLike, len:Null<Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}