package node.inspector.debugger;

typedef SetScriptSourceReturnType = {
	/**
		New stack trace in case editing has happened while VM was stopped.
	**/
	@:optional
	var callFrames : Array<CallFrame>;
	/**
		Whether current call stack  was modified after applying the changes.
	**/
	@:optional
	var stackChanged : Bool;
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
		Exception details if any.
	**/
	@:optional
	var exceptionDetails : node.inspector.runtime.ExceptionDetails;
};