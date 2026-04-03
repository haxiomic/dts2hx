package node.inspector.debugger;

typedef PausedEventDataType = {
	/**
		Call stack the virtual machine stopped on.
	**/
	var callFrames : Array<CallFrame>;
	/**
		Pause reason.
	**/
	var reason : String;
	/**
		Object containing break-specific auxiliary properties.
	**/
	@:optional
	var data : { };
	/**
		Hit breakpoints IDs
	**/
	@:optional
	var hitBreakpoints : Array<String>;
	/**
		Async stack trace, if any.
	**/
	@:optional
	var asyncStackTrace : node.inspector.runtime.StackTrace;
	/**
		Async stack trace, if any.
	**/
	@:optional
	var asyncStackTraceId : node.inspector.runtime.StackTraceId;
	/**
		Just scheduled async call will have this stack trace as parent stack during async execution. This field is available only after <code>Debugger.stepInto</code> call with <code>breakOnAsynCall</code> flag.
	**/
	@:optional
	var asyncCallStackTraceId : node.inspector.runtime.StackTraceId;
};