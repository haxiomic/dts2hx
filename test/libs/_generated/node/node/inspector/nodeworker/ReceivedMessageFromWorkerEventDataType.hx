package node.inspector.nodeworker;
extern interface ReceivedMessageFromWorkerEventDataType {
	/**
		Identifier of a session which sends a message.
	**/
	var sessionId : String;
	var message : String;
}