package node.fs;
/**
	Asynchronous fstat(2) - Get file status.
**/
@:jsRequire("fs", "fstat") extern class Fstat {
	/**
		Asynchronous fstat(2) - Get file status.
	**/
	static function __promisify__(fd:Float):js.lib.Promise<Stats>;
}