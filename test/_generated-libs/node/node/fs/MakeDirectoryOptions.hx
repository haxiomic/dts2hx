package node.fs;
extern interface MakeDirectoryOptions {
	/**
		Indicates whether parent folders should be created.
	**/
	@:optional
	var recursive : Bool;
	/**
		A file mode. If a string is passed, it is parsed as an octal integer. If not specified
	**/
	@:optional
	var mode : Float;
}