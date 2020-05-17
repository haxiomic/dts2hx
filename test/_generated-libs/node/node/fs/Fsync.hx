package node.fs;

/**
	Asynchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
**/
@:jsRequire("fs", "fsync") @valueModuleOnly extern class Fsync {
	/**
		Asynchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
	**/
	@:selfCall
	static function call(fd:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}