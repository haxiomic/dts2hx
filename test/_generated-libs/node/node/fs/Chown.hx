package node.fs;

/**
	Asynchronous chown(2) - Change ownership of a file.
**/
@:jsRequire("fs", "chown") @valueModuleOnly extern class Chown {
	/**
		Asynchronous chown(2) - Change ownership of a file.
	**/
	@:selfCall
	static function call(path:PathLike, uid:Float, gid:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}