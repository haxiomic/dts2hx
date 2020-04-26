package node.http;
@:jsRequire("http", "IncomingMessage") extern class IncomingMessage extends node.stream.Readable {
	function new(socket:node.net.Socket);
	var httpVersion : String;
	var httpVersionMajor : Float;
	var httpVersionMinor : Float;
	var connection : node.net.Socket;
	var headers : IncomingHttpHeaders;
	var rawHeaders : std.Array<String>;
	var trailers : { };
	var rawTrailers : std.Array<String>;
	function setTimeout(msecs:Float, callback:() -> Void):IncomingMessage;
	/**
		Only valid for request obtained from http.Server.
	**/
	@:optional
	var method : String;
	/**
		Only valid for request obtained from http.Server.
	**/
	@:optional
	var url : String;
	/**
		Only valid for response obtained from http.ClientRequest.
	**/
	@:optional
	var statusCode : Float;
	/**
		Only valid for response obtained from http.ClientRequest.
	**/
	@:optional
	var statusMessage : String;
	var socket : node.net.Socket;
	function destroy(?error:js.lib.Error):Void;
}