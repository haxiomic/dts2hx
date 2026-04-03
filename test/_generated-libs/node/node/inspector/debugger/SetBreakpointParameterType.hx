package node.inspector.debugger;

typedef SetBreakpointParameterType = {
	/**
		Location to set breakpoint in.
	**/
	var location : Location;
	/**
		Expression to use as a breakpoint condition. When specified, debugger will only stop on the breakpoint if this expression evaluates to true.
	**/
	@:optional
	var condition : String;
};