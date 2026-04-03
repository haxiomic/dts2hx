package node.fs;

/**
	Request that all data for the open file descriptor is flushed to the storage
	device. The specific implementation is operating system and device specific.
	Refer to the POSIX [`fsync(2)`](http://man7.org/linux/man-pages/man2/fsync.2.html) documentation for more detail. No arguments other
	than a possible exception are given to the completion callback.
**/
@:jsRequire("fs", "fsync") @valueModuleOnly extern class Fsync {
	/**
		Request that all data for the open file descriptor is flushed to the storage
		device. The specific implementation is operating system and device specific.
		Refer to the POSIX [`fsync(2)`](http://man7.org/linux/man-pages/man2/fsync.2.html) documentation for more detail. No arguments other
		than a possible exception are given to the completion callback.
	**/
	@:selfCall
	static function call(fd:Float, callback:NoParamCallback):Void;
}