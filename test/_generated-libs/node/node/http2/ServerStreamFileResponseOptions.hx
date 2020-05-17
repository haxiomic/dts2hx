package node.http2;
typedef ServerStreamFileResponseOptions = {
	@:optional
	dynamic function statCheck(stats:node.fs.Stats, headers:node.http.OutgoingHttpHeaders, statOptions:StatOptions):ts.AnyOf2<Bool, Void>;
	@:optional
	dynamic function getTrailers(trailers:node.http.OutgoingHttpHeaders):Void;
	@:optional
	var offset : Float;
	@:optional
	var length : Float;
};