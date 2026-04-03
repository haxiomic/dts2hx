package node.fs;

/**
	Asynchronously changes owner and group of a file. No arguments other than a
	possible exception are given to the completion callback.
	
	See the POSIX [`chown(2)`](http://man7.org/linux/man-pages/man2/chown.2.html) documentation for more detail.
**/
@:jsRequire("fs", "chown") @valueModuleOnly extern class Chown {
	/**
		Asynchronously changes owner and group of a file. No arguments other than a
		possible exception are given to the completion callback.
		
		See the POSIX [`chown(2)`](http://man7.org/linux/man-pages/man2/chown.2.html) documentation for more detail.
	**/
	@:selfCall
	static function call(path:PathLike, uid:Float, gid:Float, callback:NoParamCallback):Void;
}