package node.http2;

typedef IncomingHttpStatusHeader = {
	@:optional
	@:native(":status")
	var ColonStatus : Float;
};