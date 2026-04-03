package node.inspector.network;

typedef LoadingFailedEventDataType = {
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
		Error message.
	**/
	var errorText : String;
};