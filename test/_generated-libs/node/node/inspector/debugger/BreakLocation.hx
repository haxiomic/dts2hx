package node.inspector.debugger;
extern interface BreakLocation {
	/**
		Script identifier as reported in the `Debugger.scriptParsed`.
	**/
	var scriptId : String;
	/**
		Line number in the script (0-based).
	**/
	var lineNumber : Float;
	/**
		Column number in the script (0-based).
	**/
	@:optional
	var columnNumber : Float;
	@:optional
	var type : String;
}