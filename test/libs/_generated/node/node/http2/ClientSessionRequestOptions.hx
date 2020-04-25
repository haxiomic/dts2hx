package node.http2;
extern interface ClientSessionRequestOptions {
	@:optional
	var endStream : Null<Bool>;
	@:optional
	var exclusive : Null<Bool>;
	@:optional
	var parent : Null<Float>;
	@:optional
	var weight : Null<Float>;
	@:optional
	var getTrailers : Null<(trailers:node.http.OutgoingHttpHeaders, flags:Float) -> Void>;
}