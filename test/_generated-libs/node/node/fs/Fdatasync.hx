package node.fs;

/**
	Asynchronous fdatasync(2) - synchronize a file's in-core state with storage device.
**/
@:jsRequire("fs", "fdatasync") @valueModuleOnly extern class Fdatasync {
	/**
		Asynchronous fdatasync(2) - synchronize a file's in-core state with storage device.
	**/
	@:selfCall
	static function call(fd:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}