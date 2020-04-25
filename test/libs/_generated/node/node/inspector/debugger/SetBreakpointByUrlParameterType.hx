package node.inspector.debugger;
extern interface SetBreakpointByUrlParameterType {
	/**
		Line number to set breakpoint at.
	**/
	var lineNumber : Float;
	/**
		URL of the resources to set breakpoint on.
	**/
	@:optional
	var url : Null<String>;
	/**
		Regex pattern for the URLs of the resources to set breakpoints on. Either `url` or
		`urlRegex` must be specified.
	**/
	@:optional
	var urlRegex : Null<String>;
	/**
		Script hash of the resources to set breakpoint on.
	**/
	@:optional
	var scriptHash : Null<String>;
	/**
		Offset in the line to set breakpoint at.
	**/
	@:optional
	var columnNumber : Null<Float>;
	/**
		Expression to use as a breakpoint condition. When specified, debugger will only stop on the
		breakpoint if this expression evaluates to true.
	**/
	@:optional
	var condition : Null<String>;
}