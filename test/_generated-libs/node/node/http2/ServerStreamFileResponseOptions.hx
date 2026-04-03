package node.http2;

typedef ServerStreamFileResponseOptions = {
	@:optional
	dynamic function statCheck(stats:node.fs.Stats, headers:node.http.OutgoingHttpHeaders, statOptions:StatOptions):Void;
	@:optional
	var waitForTrailers : Bool;
	@:optional
	var offset : Float;
	@:optional
	var length : Float;
};