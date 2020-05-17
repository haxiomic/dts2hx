package node.inspector.debugger;

typedef PauseOnAsyncCallParameterType = {
	/**
		Debugger will pause when async call with given stack trace is started.
	**/
	var parentStackTraceId : node.inspector.runtime.StackTraceId;
};