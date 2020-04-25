package node.fs;
/**
	Asynchronous fdatasync(2) - synchronize a file's in-core state with storage device.
**/
@:jsRequire("fs", "fdatasync") extern class Fdatasync {
	/**
		Asynchronous fdatasync(2) - synchronize a file's in-core state with storage device.
	**/
	static function __promisify__(fd:Float):js.lib.Promise<Void>;
}