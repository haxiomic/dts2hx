package node.inspector.debugger;
extern interface GetPossibleBreakpointsReturnType {
	/**
		List of the possible breakpoint locations.
	**/
	var locations : std.Array<BreakLocation>;
}