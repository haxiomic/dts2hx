package node.inspector.nodeworker;
extern interface EnableParameterType {
	/**
		Whether to new workers should be paused until the frontend sends `Runtime.runIfWaitingForDebugger`
		message to run them.
	**/
	var waitForDebuggerOnStart : Bool;
}