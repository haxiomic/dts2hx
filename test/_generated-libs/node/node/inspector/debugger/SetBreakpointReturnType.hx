package node.inspector.debugger;

typedef SetBreakpointReturnType = {
	/**
		Id of the created breakpoint for further reference.
	**/
	var breakpointId : String;
	/**
		Location this breakpoint resolved into.
	**/
	var actualLocation : Location;
};