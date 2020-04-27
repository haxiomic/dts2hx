package node.fs;
/**
	Asynchronous ftruncate(2) - Truncate a file to a specified length.
	
	
	
	Asynchronous ftruncate(2) - Truncate a file to a specified length.
**/
@:jsRequire("fs", "ftruncate") @valueModuleOnly extern class Ftruncate {
	/**
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	static function __promisify__(fd:Float, ?len:Float):js.lib.Promise<Void>;
}