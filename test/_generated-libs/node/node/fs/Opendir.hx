package node.fs;

/**
	Asynchronously open a directory. See the POSIX [`opendir(3)`](http://man7.org/linux/man-pages/man3/opendir.3.html) documentation for
	more details.
	
	Creates an `fs.Dir`, which contains all further functions for reading from
	and cleaning up the directory.
	
	The `encoding` option sets the encoding for the `path` while opening the
	directory and subsequent read operations.
**/
@:jsRequire("fs", "opendir") @valueModuleOnly extern class Opendir {
	/**
		Asynchronously open a directory. See the POSIX [`opendir(3)`](http://man7.org/linux/man-pages/man3/opendir.3.html) documentation for
		more details.
		
		Creates an `fs.Dir`, which contains all further functions for reading from
		and cleaning up the directory.
		
		The `encoding` option sets the encoding for the `path` while opening the
		directory and subsequent read operations.
	**/
	@:overload(function(path:PathLike, options:OpenDirOptions, cb:(err:Null<global.nodejs.ErrnoException>, dir:Dir) -> Void):Void { })
	@:selfCall
	static function call(path:PathLike, cb:(err:Null<global.nodejs.ErrnoException>, dir:Dir) -> Void):Void;
}