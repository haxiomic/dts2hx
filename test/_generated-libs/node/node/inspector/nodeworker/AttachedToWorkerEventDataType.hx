package node.inspector.nodeworker;

typedef AttachedToWorkerEventDataType = {
	/**
		Identifier assigned to the session used to send/receive messages.
	**/
	var sessionId : String;
	var workerInfo : WorkerInfo;
	var waitingForDebugger : Bool;
};