package node.inspector.debugger;
extern interface RestartFrameReturnType {
	/**
		New stack trace.
	**/
	var callFrames : std.Array<CallFrame>;
	/**
		Async stack trace, if any.
	**/
	@:optional
	var asyncStackTrace : Null<node.inspector.runtime.StackTrace>;
	/**
		Async stack trace, if any.
	**/
	@:optional
	var asyncStackTraceId : Null<node.inspector.runtime.StackTraceId>;
}