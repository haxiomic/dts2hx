package node.url;

typedef PathToFileUrlOptions = {
	/**
		`true` if the `path` should be return as a windows filepath, `false` for posix, and `undefined` for the system default.
	**/
	@:optional
	var windows : Bool;
};