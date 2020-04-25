package node.http2;
extern interface ServerStreamResponseOptions {
	@:optional
	var endStream : Null<Bool>;
	@:optional
	var waitForTrailers : Null<Bool>;
}