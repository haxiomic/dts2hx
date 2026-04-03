package node.inspector.network;

typedef ResponseReceivedEventDataType = {
	/**
		Request identifier.
	**/
	var requestId : String;
	/**
		Timestamp.
	**/
	var timestamp : Float;
	/**
		Resource type.
	**/
	var type : String;
	/**
		Response data.
	**/
	var response : Response;
};