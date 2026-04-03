package undici_types.dispatcher;

typedef PipelineOptions = {
	/**
		`true` if the `handler` will return an object stream. Default: `false`
	**/
	@:optional
	var objectMode : Bool;
	/**
		Default: `null`
	**/
	@:optional
	var opaque : Any;
	/**
		Default: `null`
	**/
	@:optional
	var signal : Any;
	/**
		Default: 0
	**/
	@:optional
	var maxRedirections : Float;
	/**
		Default: false
	**/
	@:optional
	var redirectionLimitReached : Bool;
	/**
		Default: `null`
	**/
	@:optional
	dynamic function onInfo(info:{ var statusCode : Float; var headers : haxe.DynamicAccess<ts.AnyOf2<String, Array<String>>>; }):Void;
	/**
		Default: `null`
	**/
	@:optional
	var responseHeader : String;
	/**
		Default: `64 KiB`
	**/
	@:optional
	var highWaterMark : Float;
	@:optional
	var origin : ts.AnyOf2<String, node.url.URL>;
	var path : String;
	var method : HttpMethod;
	/**
		Default: `null`
	**/
	@:optional
	var body : ts.AnyOf5<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, node.stream.stream.Readable, global.Buffer<js.lib.ArrayBufferLike>, undici_types.FormData>;
	/**
		Default: `null`
	**/
	@:optional
	var headers : ts.AnyOf3<Array<String>, haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>, Iterable<ts.Tuple2<String, Null<ts.AnyOf2<String, Array<String>>>>>>;
	/**
		Query string params to be embedded in the request URL. Default: `null`
	**/
	@:optional
	var query : haxe.DynamicAccess<Dynamic>;
	/**
		Whether the requests can be safely retried or not. If `false` the request won't be sent until all preceding requests in the pipeline have completed. Default: `true` if `method` is `HEAD` or `GET`.
	**/
	@:optional
	var idempotent : Bool;
	/**
		Whether the response is expected to take a long time and would end up blocking the pipeline. When this is set to `true` further pipelining will be avoided on the same connection until headers have been received.
	**/
	@:optional
	var blocking : Bool;
	/**
		Upgrade the request. Should be used to specify the kind of upgrade i.e. `'Websocket'`. Default: `method === 'CONNECT' || null`.
	**/
	@:optional
	var upgrade : ts.AnyOf2<String, Bool>;
	/**
		The amount of time, in milliseconds, the parser will wait to receive the complete HTTP headers. Defaults to 300 seconds.
	**/
	@:optional
	var headersTimeout : Float;
	/**
		The timeout after which a request will time out, in milliseconds. Monitors time between receiving body data. Use 0 to disable it entirely. Defaults to 300 seconds.
	**/
	@:optional
	var bodyTimeout : Float;
	/**
		Whether the request should stablish a keep-alive or not. Default `false`
	**/
	@:optional
	var reset : Bool;
	/**
		Whether Undici should throw an error upon receiving a 4xx or 5xx response from the server. Defaults to false
	**/
	@:optional
	var throwOnError : Bool;
	/**
		For H2, it appends the expect: 100-continue header, and halts the request body until a 100-continue is received from the remote server
	**/
	@:optional
	var expectContinue : Bool;
};