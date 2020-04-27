package node.http;
@:jsRequire("http", "Server") extern class Server extends node.net.Server {
	@:overload(function(options:ServerOptions, ?requestListener:(req:IncomingMessage, res:ServerResponse) -> Void):Server { })
	function new(?requestListener:(req:IncomingMessage, res:ServerResponse) -> Void);
	@:overload(function(callback:() -> Void):Server { })
	function setTimeout(?msecs:Float, ?callback:() -> Void):Server;
	/**
		Limits maximum incoming headers count. If set to 0, no limit will be applied.
	**/
	var maxHeadersCount : Null<Float>;
	var timeout : Float;
	/**
		Limit the amount of time the parser will wait to receive the complete HTTP headers.
	**/
	var headersTimeout : Float;
	var keepAliveTimeout : Float;
}