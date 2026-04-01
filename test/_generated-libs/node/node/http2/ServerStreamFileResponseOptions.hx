package node.http2;

typedef ServerStreamFileResponseOptions = {
	@:optional
	dynamic function statCheck(stats:node.fs.Stats, headers:node.http.OutgoingHttpHeaders, statOptions:StatOptions):Bool;
	@:optional
	dynamic function getTrailers(trailers:node.http.OutgoingHttpHeaders):Void;
	@:optional
	var offset : Float;
	@:optional
	var length : Float;
};