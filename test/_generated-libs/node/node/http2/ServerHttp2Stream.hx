package node.http2;
extern interface ServerHttp2Stream extends Http2Stream {
	function additionalHeaders(headers:node.http.OutgoingHttpHeaders):Void;
	final headersSent : Bool;
	final pushAllowed : Bool;
	@:overload(function(headers:node.http.OutgoingHttpHeaders, ?options:StreamPriorityOptions, ?callback:(err:Null<js.lib.Error>, pushStream:ServerHttp2Stream, headers:node.http.OutgoingHttpHeaders) -> Void):Void { })
	function pushStream(headers:node.http.OutgoingHttpHeaders, ?callback:(err:Null<js.lib.Error>, pushStream:ServerHttp2Stream, headers:node.http.OutgoingHttpHeaders) -> Void):Void;
	function respond(?headers:node.http.OutgoingHttpHeaders, ?options:ServerStreamResponseOptions):Void;
	function respondWithFD(fd:Float, ?headers:node.http.OutgoingHttpHeaders, ?options:ServerStreamFileResponseOptions):Void;
	function respondWithFile(path:String, ?headers:node.http.OutgoingHttpHeaders, ?options:ServerStreamFileResponseOptionsWithError):Void;
}