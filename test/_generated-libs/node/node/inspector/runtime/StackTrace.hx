package node.inspector.runtime;

/**
	Call frames for assertions or error messages.
**/
typedef StackTrace = {
	/**
		String label of this stack trace. For async traces this may be a name of the function that initiated the async call.
	**/
	@:optional
	var description : String;
	/**
		JavaScript function name.
	**/
	var callFrames : Array<CallFrame>;
	/**
		Asynchronous JavaScript stack trace that preceded this stack, if available.
	**/
	@:optional
	var parent : StackTrace;
	/**
		Asynchronous JavaScript stack trace that preceded this stack, if available.
	**/
	@:optional
	var parentId : StackTraceId;
};