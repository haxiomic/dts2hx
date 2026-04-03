package node.fs;

/**
	Change the file system timestamps of the object referenced by `path`.
	
	The `atime` and `mtime` arguments follow these rules:
	
	* Values can be either numbers representing Unix epoch time in seconds, `Date`s, or a numeric string like `'123456789.0'`.
	* If the value can not be converted to a number, or is `NaN`, `Infinity`, or `-Infinity`, an `Error` will be thrown.
**/
@:jsRequire("fs", "utimes") @valueModuleOnly extern class Utimes {
	/**
		Change the file system timestamps of the object referenced by `path`.
		
		The `atime` and `mtime` arguments follow these rules:
		
		* Values can be either numbers representing Unix epoch time in seconds, `Date`s, or a numeric string like `'123456789.0'`.
		* If the value can not be converted to a number, or is `NaN`, `Infinity`, or `-Infinity`, an `Error` will be thrown.
	**/
	@:selfCall
	static function call(path:PathLike, atime:TimeLike, mtime:TimeLike, callback:NoParamCallback):Void;
}