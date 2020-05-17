package node.vm;

typedef RunningScriptOptions = {
	@:optional
	var displayErrors : Bool;
	@:optional
	var timeout : Float;
	/**
		Specifies the filename used in stack traces produced by this script.
		Default: `''`.
	**/
	@:optional
	var filename : String;
	/**
		Specifies the line number offset that is displayed in stack traces produced by this script.
		Default: `0`.
	**/
	@:optional
	var lineOffset : Float;
	/**
		Specifies the column number offset that is displayed in stack traces produced by this script.
		Default: `0`
	**/
	@:optional
	var columnOffset : Float;
};