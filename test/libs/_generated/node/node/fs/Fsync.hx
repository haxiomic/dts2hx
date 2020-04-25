package node.fs;
/**
	Asynchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
**/
@:jsRequire("fs", "fsync") extern class Fsync {
	/**
		Asynchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
	**/
	static function __promisify__(fd:Float):js.lib.Promise<Void>;
}