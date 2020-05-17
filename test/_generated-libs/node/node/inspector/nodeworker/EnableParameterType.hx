package node.inspector.nodeworker;

typedef EnableParameterType = {
	/**
		Whether to new workers should be paused until the frontend sends `Runtime.runIfWaitingForDebugger`
		message to run them.
	**/
	var waitForDebuggerOnStart : Bool;
};