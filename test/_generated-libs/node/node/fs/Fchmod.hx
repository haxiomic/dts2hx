package node.fs;

/**
	Sets the permissions on the file. No arguments other than a possible exception
	are given to the completion callback.
	
	See the POSIX [`fchmod(2)`](http://man7.org/linux/man-pages/man2/fchmod.2.html) documentation for more detail.
**/
@:jsRequire("fs", "fchmod") @valueModuleOnly extern class Fchmod {
	/**
		Sets the permissions on the file. No arguments other than a possible exception
		are given to the completion callback.
		
		See the POSIX [`fchmod(2)`](http://man7.org/linux/man-pages/man2/fchmod.2.html) documentation for more detail.
	**/
	@:selfCall
	static function call(fd:Float, mode:Mode, callback:NoParamCallback):Void;
}