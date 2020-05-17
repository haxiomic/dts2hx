package node.inspector.nodeworker;

typedef ReceivedMessageFromWorkerEventDataType = {
	/**
		Identifier of a session which sends a message.
	**/
	var sessionId : String;
	var message : String;
};