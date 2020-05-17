package node.fs;

/**
	Asynchronous fchmod(2) - Change permissions of a file.
**/
@:jsRequire("fs", "fchmod") @valueModuleOnly extern class Fchmod {
	/**
		Asynchronous fchmod(2) - Change permissions of a file.
	**/
	@:selfCall
	static function call(fd:Float, mode:ts.AnyOf2<String, Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}