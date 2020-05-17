package node.inspector.runtime;

/**
	Stack entry for runtime errors and assertions.
**/
typedef CallFrame = {
	/**
		JavaScript function name.
	**/
	var functionName : String;
	/**
		JavaScript script id.
	**/
	var scriptId : String;
	/**
		JavaScript script name or url.
	**/
	var url : String;
	/**
		JavaScript script line number (0-based).
	**/
	var lineNumber : Float;
	/**
		JavaScript script column number (0-based).
	**/
	var columnNumber : Float;
};