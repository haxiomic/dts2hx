package node.fs;

/**
	Asynchronous close(2) - close a file descriptor.
**/
@:jsRequire("fs", "close") @valueModuleOnly extern class Close {
	/**
		Asynchronous close(2) - close a file descriptor.
	**/
	@:selfCall
	static function call(fd:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}