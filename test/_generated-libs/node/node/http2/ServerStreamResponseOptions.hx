package node.http2;

typedef ServerStreamResponseOptions = {
	@:optional
	var endStream : Bool;
	@:optional
	var waitForTrailers : Bool;
};