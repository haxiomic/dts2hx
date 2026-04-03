package node.http2;

typedef ClientSessionRequestOptions = {
	@:optional
	var endStream : Bool;
	@:optional
	var exclusive : Bool;
	@:optional
	var parent : Float;
	@:optional
	var weight : Float;
	@:optional
	var waitForTrailers : Bool;
	@:optional
	var signal : js.html.AbortSignal;
};