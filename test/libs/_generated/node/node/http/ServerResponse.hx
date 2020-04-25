package node.http;
@:jsRequire("http", "ServerResponse") extern class ServerResponse extends OutgoingMessage {
	function new(req:IncomingMessage);
	var statusCode : Float;
	var statusMessage : String;
	function assignSocket(socket:node.net.Socket):Void;
	function detachSocket(socket:node.net.Socket):Void;
	function writeContinue(?callback:() -> Void):Void;
	@:overload(function(statusCode:Float, ?headers:OutgoingHttpHeaders):ServerResponse { })
	function writeHead(statusCode:Float, ?reasonPhrase:String, ?headers:OutgoingHttpHeaders):ServerResponse;
}