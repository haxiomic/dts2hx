package node.inspector.network;

/**
	HTTP response data.
**/
typedef Response = {
	var url : String;
	var status : Float;
	var statusText : String;
	var headers : Headers;
};