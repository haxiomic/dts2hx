package node.fs;
/**
	Asynchronous close(2) - close a file descriptor.
**/
@:jsRequire("fs", "close") extern class Close {
	/**
		Asynchronous close(2) - close a file descriptor.
	**/
	static function __promisify__(fd:Float):js.lib.Promise<Void>;
}