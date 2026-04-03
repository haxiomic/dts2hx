package node.fs;

/**
	Change the file system timestamps of the object referenced by the supplied file
	descriptor. See
	{@link
	utimes
	}
	.
**/
@:jsRequire("fs", "futimes") @valueModuleOnly extern class Futimes {
	/**
		Change the file system timestamps of the object referenced by the supplied file
		descriptor. See 
		{@link 
		utimes
		}
		.
	**/
	@:selfCall
	static function call(fd:Float, atime:TimeLike, mtime:TimeLike, callback:NoParamCallback):Void;
}