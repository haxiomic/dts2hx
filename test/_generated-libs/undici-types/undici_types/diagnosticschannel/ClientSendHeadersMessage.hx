package undici_types.diagnosticschannel;

typedef ClientSendHeadersMessage = {
	var request : Request;
	var headers : String;
	var socket : node.net.Socket;
};