package node.fs;

/**
	Asynchronous fchown(2) - Change ownership of a file.
**/
@:jsRequire("fs", "fchown") @valueModuleOnly extern class Fchown {
	/**
		Asynchronous fchown(2) - Change ownership of a file.
	**/
	@:selfCall
	static function call(fd:Float, uid:Float, gid:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}