package node.fs;

/**
	Sets the owner of the file. No arguments other than a possible exception are
	given to the completion callback.
	
	See the POSIX [`fchown(2)`](http://man7.org/linux/man-pages/man2/fchown.2.html) documentation for more detail.
**/
@:jsRequire("fs", "fchown") @valueModuleOnly extern class Fchown {
	/**
		Sets the owner of the file. No arguments other than a possible exception are
		given to the completion callback.
		
		See the POSIX [`fchown(2)`](http://man7.org/linux/man-pages/man2/fchown.2.html) documentation for more detail.
	**/
	@:selfCall
	static function call(fd:Float, uid:Float, gid:Float, callback:NoParamCallback):Void;
}