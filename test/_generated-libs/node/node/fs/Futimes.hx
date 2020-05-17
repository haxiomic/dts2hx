package node.fs;

/**
	Asynchronously change file timestamps of the file referenced by the supplied file descriptor.
**/
@:jsRequire("fs", "futimes") @valueModuleOnly extern class Futimes {
	/**
		Asynchronously change file timestamps of the file referenced by the supplied file descriptor.
	**/
	@:selfCall
	static function call(fd:Float, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}