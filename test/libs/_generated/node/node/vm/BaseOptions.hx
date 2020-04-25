package node.vm;
extern interface BaseOptions {
	/**
		Specifies the filename used in stack traces produced by this script.
		Default: `''`.
	**/
	@:optional
	var filename : Null<String>;
	/**
		Specifies the line number offset that is displayed in stack traces produced by this script.
		Default: `0`.
	**/
	@:optional
	var lineOffset : Null<Float>;
	/**
		Specifies the column number offset that is displayed in stack traces produced by this script.
		Default: `0`
	**/
	@:optional
	var columnOffset : Null<Float>;
}