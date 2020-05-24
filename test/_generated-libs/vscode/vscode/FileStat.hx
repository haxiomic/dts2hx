package vscode;

/**
	The `FileStat`-type represents metadata about a file
**/
typedef FileStat = {
	/**
		The type of the file, e.g. is a regular file, a directory, or symbolic link
		to a file.
		
		*Note:* This value might be a bitmask, e.g. `FileType.File | FileType.SymbolicLink`.
	**/
	var type : FileType;
	/**
		The creation timestamp in milliseconds elapsed since January 1, 1970 00:00:00 UTC.
	**/
	var ctime : Float;
	/**
		The modification timestamp in milliseconds elapsed since January 1, 1970 00:00:00 UTC.
		
		*Note:* If the file changed, it is important to provide an updated `mtime` that advanced
		from the previous value. Otherwise there may be optimizations in place that will not show
		the updated file contents in an editor for example.
	**/
	var mtime : Float;
	/**
		The size in bytes.
		
		*Note:* If the file changed, it is important to provide an updated `size`. Otherwise there
		may be optimizations in place that will not show the updated file contents in an editor for
		example.
	**/
	var size : Float;
};