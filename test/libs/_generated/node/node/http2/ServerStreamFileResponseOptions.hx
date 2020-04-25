package node.http2;
extern interface ServerStreamFileResponseOptions {
	@:optional
	var statCheck : Null<(stats:node.fs.Stats, headers:node.http.OutgoingHttpHeaders, statOptions:StatOptions) -> haxe.extern.EitherType<Bool, Void>>;
	@:optional
	var getTrailers : Null<(trailers:node.http.OutgoingHttpHeaders) -> Void>;
	@:optional
	var offset : Null<Float>;
	@:optional
	var length : Null<Float>;
}