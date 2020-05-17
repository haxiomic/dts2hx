package node.inspector.debugger;

typedef BreakpointResolvedEventDataType = {
	/**
		Breakpoint unique identifier.
	**/
	var breakpointId : String;
	/**
		Actual breakpoint location.
	**/
	var location : Location;
};