package node.inspector.debugger;
extern interface BreakpointResolvedEventDataType {
	/**
		Breakpoint unique identifier.
	**/
	var breakpointId : String;
	/**
		Actual breakpoint location.
	**/
	var location : Location;
}