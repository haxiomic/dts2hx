package node.http;

typedef InformationEvent = {
	var statusCode : Float;
	var statusMessage : String;
	var httpVersion : String;
	var httpVersionMajor : Float;
	var httpVersionMinor : Float;
	var headers : IncomingHttpHeaders;
	var rawHeaders : Array<String>;
};