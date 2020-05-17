package node.fs;

/**
	Asynchronously tests whether or not the given path exists by checking with the file system.
**/
@:jsRequire("fs", "exists") @valueModuleOnly extern class Exists {
	/**
		Asynchronously tests whether or not the given path exists by checking with the file system.
	**/
	@:selfCall
	static function call(path:PathLike, callback:(exists:Bool) -> Void):Void;
}