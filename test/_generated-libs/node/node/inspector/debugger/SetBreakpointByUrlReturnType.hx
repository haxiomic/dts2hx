package node.inspector.debugger;
extern typedef SetBreakpointByUrlReturnType = { /**
		Id of the created breakpoint for further reference.
	**/
	var breakpointId : String; /**
		List of the locations this breakpoint resolved into upon addition.
	**/
	var locations : std.Array<Location>; };