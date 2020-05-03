package node.https;
@:jsRequire("https", "Server") extern class Server extends node.tls.Server {
	function new(options:ServerOptions, ?requestListener:node.http.RequestListener);
	@:overload(function(?msecs:Float, ?callback:() -> Void):Server { })
	function setTimeout(callback:() -> Void):Server;
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