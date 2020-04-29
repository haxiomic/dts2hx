package node.inspector.debugger;
extern typedef RestartFrameReturnType = {
	/**
		New stack trace.
	**/
	var callFrames : std.Array<CallFrame>;
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