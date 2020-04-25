package node.inspector.debugger;
extern interface GetPossibleBreakpointsParameterType {
	/**
		Start of range to search possible breakpoint locations in.
	**/
	var start : Location;
	/**
		End of range to search possible breakpoint locations in (excluding). When not specified, end
		of scripts is used as end of range.
	**/
	@:optional
	var end : Null<Location>;
	/**
		Only consider locations which are in the same (non-nested) function as start.
	**/
	@:optional
	var restrictToFunction : Null<Bool>;
}