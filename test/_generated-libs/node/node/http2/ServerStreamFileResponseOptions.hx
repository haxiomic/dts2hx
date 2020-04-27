package node.http2;
extern typedef ServerStreamFileResponseOptions = { @:optional
	var statCheck : (stats:node.fs.Stats, headers:node.http.OutgoingHttpHeaders, statOptions:StatOptions) -> haxe.extern.EitherType<Bool, Void>; @:optional
	var getTrailers : (trailers:node.http.OutgoingHttpHeaders) -> Void; @:optional
	var offset : Float; @:optional
	var length : Float; };