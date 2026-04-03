package node.inspector.debugger;

typedef BreakLocation = {
	/**
		Script identifier as reported in the <code>Debugger.scriptParsed</code>.
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
};