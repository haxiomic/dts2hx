package node.fs;

typedef MakeDirectoryOptions = {
	/**
		Indicates whether parent folders should be created.
		If a folder was created, the path to the first created folder will be returned.
	**/
	@:optional
	var recursive : Bool;
	/**
		A file mode. If a string is passed, it is parsed as an octal integer. If not specified
	**/
	@:optional
	var mode : Mode;
};