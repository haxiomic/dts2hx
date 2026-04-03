package node.inspector.network;

typedef RequestWillBeSentEventDataType = {
	/**
		Request identifier.
	**/
	var requestId : String;
	/**
		Request data.
	**/
	var request : Request;
	/**
		Timestamp.
	**/
	var timestamp : Float;
	/**
		Timestamp.
	**/
	var wallTime : Float;
};