package node.fs;

/**
	Creates a new link from the `existingPath` to the `newPath`. See the POSIX [`link(2)`](http://man7.org/linux/man-pages/man2/link.2.html) documentation for more detail. No arguments other than
	a possible
	exception are given to the completion callback.
**/
@:jsRequire("fs", "link") @valueModuleOnly extern class Link {
	/**
		Creates a new link from the `existingPath` to the `newPath`. See the POSIX [`link(2)`](http://man7.org/linux/man-pages/man2/link.2.html) documentation for more detail. No arguments other than
		a possible
		exception are given to the completion callback.
	**/
	@:selfCall
	static function call(existingPath:PathLike, newPath:PathLike, callback:NoParamCallback):Void;
}