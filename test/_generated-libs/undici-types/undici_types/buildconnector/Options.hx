package undici_types.buildconnector;

typedef Options = {
	var hostname : String;
	@:optional
	var host : String;
	var protocol : String;
	var port : String;
	@:optional
	var servername : String;
	@:optional
	var localAddress : String;
	@:optional
	var httpSocket : node.net.Socket;
};