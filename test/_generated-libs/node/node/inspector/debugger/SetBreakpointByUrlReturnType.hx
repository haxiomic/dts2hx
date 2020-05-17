package node.inspector.debugger;

typedef SetBreakpointByUrlReturnType = {
	/**
		Id of the created breakpoint for further reference.
	**/
	var breakpointId : String;
	/**
		List of the locations this breakpoint resolved into upon addition.
	**/
	var locations : Array<Location>;
};