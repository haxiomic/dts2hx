package node.inspector.debugger;
extern interface SetScriptSourceReturnType {
	/**
		New stack trace in case editing has happened while VM was stopped.
	**/
	@:optional
	var callFrames : Null<std.Array<CallFrame>>;
	/**
		Whether current call stack  was modified after applying the changes.
	**/
	@:optional
	var stackChanged : Null<Bool>;
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
	/**
		Exception details if any.
	**/
	@:optional
	var exceptionDetails : Null<node.inspector.runtime.ExceptionDetails>;
}