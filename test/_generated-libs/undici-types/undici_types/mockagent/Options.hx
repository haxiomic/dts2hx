package undici_types.mockagent;

/**
	MockAgent options.
**/
typedef Options = {
	/**
		A custom agent to be encapsulated by the MockAgent.
	**/
	@:optional
	var agent : undici_types.Agent;
	/**
		Default: `(origin, opts) => new Pool(origin, opts)`.
	**/
	@:optional
	function factory(origin:ts.AnyOf2<String, node.url.URL>, opts:Dynamic):undici_types.Dispatcher;
	/**
		Integer. Default: `0`
	**/
	@:optional
	var maxRedirections : Float;
	/**
		TODO
	**/
	@:optional
	var interceptors : {
		@:optional
		var Agent : haxe.ds.ReadOnlyArray<undici_types.dispatcher.DispatchInterceptor>;
	} & {
		@:optional
		var Pool : haxe.ds.ReadOnlyArray<undici_types.dispatcher.DispatchInterceptor>;
	} & undici_types.client.OptionsInterceptors;
	/**
		The max number of clients to create. `null` if no limit. Default `null`.
	**/
	@:optional
	var connections : Float;
	/**
		The maximum length of request headers in bytes. Default: Node.js' `--max-http-header-size` or `16384` (16KiB).
	**/
	@:optional
	var maxHeaderSize : Float;
	/**
		The amount of time, in milliseconds, the parser will wait to receive the complete HTTP headers (Node 14 and above only). Default: `300e3` milliseconds (300s).
	**/
	@:optional
	var headersTimeout : Float;
	@:optional
	var socketTimeout : Any;
	@:optional
	var requestTimeout : Any;
	/**
		TODO
	**/
	@:optional
	var connectTimeout : Float;
	/**
		The timeout after which a request will time out, in milliseconds. Monitors time between receiving body data. Use `0` to disable it entirely. Default: `300e3` milliseconds (300s).
	**/
	@:optional
	var bodyTimeout : Float;
	@:optional
	var idleTimeout : Any;
	@:optional
	var keepAlive : Any;
	/**
		the timeout, in milliseconds, after which a socket without active requests will time out. Monitors time between activity on a connected socket. This value may be overridden by *keep-alive* hints from the server. Default: `4e3` milliseconds (4s).
	**/
	@:optional
	var keepAliveTimeout : Float;
	@:optional
	var maxKeepAliveTimeout : Any;
	/**
		the maximum allowed `idleTimeout`, in milliseconds, when overridden by *keep-alive* hints from the server. Default: `600e3` milliseconds (10min).
	**/
	@:optional
	var keepAliveMaxTimeout : Float;
	/**
		A number of milliseconds subtracted from server *keep-alive* hints when overriding `idleTimeout` to account for timing inaccuracies caused by e.g. transport latency. Default: `1e3` milliseconds (1s).
	**/
	@:optional
	var keepAliveTimeoutThreshold : Float;
	/**
		TODO
	**/
	@:optional
	var socketPath : String;
	/**
		The amount of concurrent requests to be sent over the single TCP/TLS connection according to [RFC7230](https://tools.ietf.org/html/rfc7230#section-6.3.2). Default: `1`.
	**/
	@:optional
	var pipelining : Float;
	@:optional
	var tls : Any;
	/**
		If `true`, an error is thrown when the request content-length header doesn't match the length of the request body. Default: `true`.
	**/
	@:optional
	var strictContentLength : Bool;
	/**
		TODO
	**/
	@:optional
	var maxCachedSessions : Float;
	/**
		TODO
	**/
	@:optional
	var connect : ts.AnyOf2<Dynamic, undici_types.buildconnector.Connector>;
	/**
		TODO
	**/
	@:optional
	var maxRequestsPerClient : Float;
	/**
		TODO
	**/
	@:optional
	var localAddress : String;
	/**
		Max response body size in bytes, -1 is disabled
	**/
	@:optional
	var maxResponseSize : Float;
	/**
		Enables a family autodetection algorithm that loosely implements section 5 of RFC 8305.
	**/
	@:optional
	var autoSelectFamily : Bool;
	/**
		The amount of time in milliseconds to wait for a connection attempt to finish before trying the next address when using the `autoSelectFamily` option.
	**/
	@:optional
	var autoSelectFamilyAttemptTimeout : Float;
	@:optional
	var allowH2 : Bool;
	@:optional
	var maxConcurrentStreams : Float;
};