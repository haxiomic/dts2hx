package node.http2;
extern interface IncomingHttpStatusHeader {
	@:native(":status")
	@:optional
	var ColonStatus : Float;
}