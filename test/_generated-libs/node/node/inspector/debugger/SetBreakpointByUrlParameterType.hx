package node.inspector.debugger;

typedef SetBreakpointByUrlParameterType = {
	/**
		Line number to set breakpoint at.
	**/
	var lineNumber : Float;
	/**
		URL of the resources to set breakpoint on.
	**/
	@:optional
	var url : String;
	/**
		Regex pattern for the URLs of the resources to set breakpoints on. Either <code>url</code> or <code>urlRegex</code> must be specified.
	**/
	@:optional
	var urlRegex : String;
	/**
		Script hash of the resources to set breakpoint on.
	**/
	@:optional
	var scriptHash : String;
	/**
		Offset in the line to set breakpoint at.
	**/
	@:optional
	var columnNumber : Float;
	/**
		Expression to use as a breakpoint condition. When specified, debugger will only stop on the breakpoint if this expression evaluates to true.
	**/
	@:optional
	var condition : String;
};