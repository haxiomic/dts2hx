package node.inspector.debugger;

typedef RestartFrameReturnType = {
	/**
		New stack trace.
	**/
	var callFrames : Array<CallFrame>;
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
};