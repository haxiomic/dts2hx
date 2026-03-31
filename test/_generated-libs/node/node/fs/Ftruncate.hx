package node.fs;

/**
	Asynchronous ftruncate(2) - Truncate a file to a specified length.
**/
@:jsRequire("fs", "ftruncate") @valueModuleOnly extern class Ftruncate {
	/**
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	@:overload(function(fd:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	@:selfCall
	static function call(fd:Float, len:Null<Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}