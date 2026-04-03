package undici_types.dispatcher;

typedef DispatchHandlers = {
	/**
		Invoked before request is dispatched on socket. May be invoked multiple times when a request is retried when the request at the head of the pipeline fails.
	**/
	@:optional
	function onConnect(abort:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void;
	/**
		Invoked when an error has occurred.
	**/
	@:optional
	function onError(err:js.lib.Error):Void;
	/**
		Invoked when request is upgraded either due to a `Upgrade` header or `CONNECT` method.
	**/
	@:optional
	function onUpgrade(statusCode:Float, headers:Null<ts.AnyOf2<Array<String>, Array<global.Buffer<js.lib.ArrayBufferLike>>>>, socket:node.stream.stream.Duplex):Void;
	/**
		Invoked when response is received, before headers have been read. *
	**/
	@:optional
	function onResponseStarted():Void;
	/**
		Invoked when statusCode and headers have been received. May be invoked multiple times due to 1xx informational headers.
	**/
	@:optional
	function onHeaders(statusCode:Float, headers:Array<global.Buffer<js.lib.ArrayBufferLike>>, resume:() -> Void, statusText:String):Bool;
	/**
		Invoked when response payload data is received.
	**/
	@:optional
	function onData(chunk:global.Buffer<js.lib.ArrayBufferLike>):Bool;
	/**
		Invoked when response payload and trailers have been received and the request has completed.
	**/
	@:optional
	function onComplete(trailers:Null<Array<String>>):Void;
	/**
		Invoked when a body chunk is sent to the server. May be invoked multiple times for chunked requests
	**/
	@:optional
	function onBodySent(chunkSize:Float, totalBytesSent:Float):Void;
};