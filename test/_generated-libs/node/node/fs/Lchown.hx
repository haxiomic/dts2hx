package node.fs;

/**
	Set the owner of the symbolic link. No arguments other than a possible
	exception are given to the completion callback.
	
	See the POSIX [`lchown(2)`](http://man7.org/linux/man-pages/man2/lchown.2.html) documentation for more detail.
**/
@:jsRequire("fs", "lchown") @valueModuleOnly extern class Lchown {
	/**
		Set the owner of the symbolic link. No arguments other than a possible
		exception are given to the completion callback.
		
		See the POSIX [`lchown(2)`](http://man7.org/linux/man-pages/man2/lchown.2.html) documentation for more detail.
	**/
	@:selfCall
	static function call(path:PathLike, uid:Float, gid:Float, callback:NoParamCallback):Void;
}