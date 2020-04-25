package node.inspector.debugger;
extern interface SetBreakpointOnFunctionCallParameterType {
	/**
		Function object id.
	**/
	var objectId : String;
	/**
		Expression to use as a breakpoint condition. When specified, debugger will
		stop on the breakpoint if this expression evaluates to true.
	**/
	@:optional
	var condition : Null<String>;
}