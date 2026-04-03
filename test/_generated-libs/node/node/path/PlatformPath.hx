package node.path;

typedef PlatformPath = {
	/**
		Normalize a string path, reducing '..' and '.' parts.
		When multiple slashes are found, they're replaced by a single one; when the path contains a trailing slash, it is preserved. On Windows backslashes are used. If the path is a zero-length string, '.' is returned, representing the current working directory.
	**/
	function normalize(path:String):String;
	/**
		Join all arguments together and normalize the resulting path.
	**/
	function join(paths:haxe.extern.Rest<String>):String;
	/**
		The right-most parameter is considered {to}. Other parameters are considered an array of {from}.
		
		Starting from leftmost {from} parameter, resolves {to} to an absolute path.
		
		If {to} isn't already absolute, {from} arguments are prepended in right to left order,
		until an absolute path is found. If after using all {from} paths still no absolute path is found,
		the current working directory is used as well. The resulting path is normalized,
		and trailing slashes are removed unless the path gets resolved to the root directory.
	**/
	function resolve(paths:haxe.extern.Rest<String>):String;
	/**
		The `path.matchesGlob()` method determines if `path` matches the `pattern`.
	**/
	function matchesGlob(path:String, pattern:String):Bool;
	/**
		Determines whether {path} is an absolute path. An absolute path will always resolve to the same location, regardless of the working directory.
		
		If the given {path} is a zero-length string, `false` will be returned.
	**/
	function isAbsolute(path:String):Bool;
	/**
		Solve the relative path from {from} to {to} based on the current working directory.
		At times we have two absolute paths, and we need to derive the relative path from one to the other. This is actually the reverse transform of path.resolve.
	**/
	function relative(from:String, to:String):String;
	/**
		Return the directory name of a path. Similar to the Unix dirname command.
	**/
	function dirname(path:String):String;
	/**
		Return the last portion of a path. Similar to the Unix basename command.
		Often used to extract the file name from a fully qualified path.
	**/
	function basename(path:String, ?suffix:String):String;
	/**
		Return the extension of the path, from the last '.' to end of string in the last portion of the path.
		If there is no '.' in the last portion of the path or the first character of it is '.', then it returns an empty string.
	**/
	function extname(path:String):String;
	/**
		The platform-specific file separator. '\\' or '/'.
	**/
	final sep : String;
	/**
		The platform-specific file delimiter. ';' or ':'.
	**/
	final delimiter : String;
	/**
		Returns an object from a path string - the opposite of format().
	**/
	function parse(path:String):ParsedPath;
	/**
		Returns a path string from an object - the opposite of parse().
	**/
	function format(pathObject:FormatInputPathObject):String;
	/**
		On Windows systems only, returns an equivalent namespace-prefixed path for the given path.
		If path is not a string, path will be returned without modifications.
		This method is meaningful only on Windows system.
		On POSIX systems, the method is non-operational and always returns path without modifications.
	**/
	function toNamespacedPath(path:String):String;
	/**
		Posix specific pathing.
		Same as parent object on posix.
	**/
	final posix : PlatformPath;
	/**
		Windows specific pathing.
		Same as parent object on windows
	**/
	final win32 : PlatformPath;
};