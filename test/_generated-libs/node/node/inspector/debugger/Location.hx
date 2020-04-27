package node.inspector.debugger;
/**
	Location in the source code.
**/
extern interface Location {
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
}