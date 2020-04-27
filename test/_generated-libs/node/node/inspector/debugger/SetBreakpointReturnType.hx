package node.inspector.debugger;
extern interface SetBreakpointReturnType {
	/**
		Id of the created breakpoint for further reference.
	**/
	var breakpointId : String;
	/**
		Location this breakpoint resolved into.
	**/
	var actualLocation : Location;
}