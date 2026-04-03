package node.url;

typedef FileUrlToPathOptions = {
	/**
		`true` if the `path` should be return as a windows filepath, `false` for posix, and `undefined` for the system default.
	**/
	@:optional
	var windows : Bool;
};