package node.fs;

/**
	A representation of a directory entry, which can be a file or a subdirectory
	within the directory, as returned by reading from an `fs.Dir`. The
	directory entry is a combination of the file name and file type pairs.
	
	Additionally, when
	{@link
	readdir
	}
	or
	{@link
	readdirSync
	}
	is called with
	the `withFileTypes` option set to `true`, the resulting array is filled with `fs.Dirent` objects, rather than strings or `Buffer` s.
**/
@:jsRequire("fs", "Dirent") extern class Dirent<Name> {
	function new();
	/**
		Returns `true` if the `fs.Dirent` object describes a regular file.
	**/
	function isFile():Bool;
	/**
		Returns `true` if the `fs.Dirent` object describes a file system
		directory.
	**/
	function isDirectory():Bool;
	/**
		Returns `true` if the `fs.Dirent` object describes a block device.
	**/
	function isBlockDevice():Bool;
	/**
		Returns `true` if the `fs.Dirent` object describes a character device.
	**/
	function isCharacterDevice():Bool;
	/**
		Returns `true` if the `fs.Dirent` object describes a symbolic link.
	**/
	function isSymbolicLink():Bool;
	/**
		Returns `true` if the `fs.Dirent` object describes a first-in-first-out
		(FIFO) pipe.
	**/
	function isFIFO():Bool;
	/**
		Returns `true` if the `fs.Dirent` object describes a socket.
	**/
	function isSocket():Bool;
	/**
		The file name that this `fs.Dirent` object refers to. The type of this
		value is determined by the `options.encoding` passed to
		{@link
		readdir
		}
		or
		{@link
		readdirSync
		}
		.
	**/
	var name : Name;
	/**
		The base path that this `fs.Dirent` object refers to.
	**/
	var parentPath : String;
	/**
		Alias for `dirent.parentPath`.
	**/
	var path : String;
	static var prototype : Dirent<Dynamic>;
}