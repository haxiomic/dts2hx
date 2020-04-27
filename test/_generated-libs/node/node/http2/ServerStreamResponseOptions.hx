package node.http2;
extern interface ServerStreamResponseOptions {
	@:optional
	var endStream : Bool;
	@:optional
	var waitForTrailers : Bool;
}