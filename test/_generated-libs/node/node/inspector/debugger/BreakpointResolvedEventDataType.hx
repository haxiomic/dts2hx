package node.inspector.debugger;
extern typedef BreakpointResolvedEventDataType = {
	/**
		Breakpoint unique identifier.
	**/
	var breakpointId : String;
	/**
		Actual breakpoint location.
	**/
	var location : Location;
};