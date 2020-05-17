package node.fs;

/**
	Asynchronous fstat(2) - Get file status.
**/
@:jsRequire("fs", "fstat") @valueModuleOnly extern class Fstat {
	/**
		Asynchronous fstat(2) - Get file status.
	**/
	@:selfCall
	static function call(fd:Float, callback:(err:global.nodejs.ErrnoException, stats:Stats) -> Void):Void;
}