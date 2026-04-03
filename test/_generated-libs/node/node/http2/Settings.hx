package node.http2;

typedef Settings = {
	@:optional
	var headerTableSize : Float;
	@:optional
	var enablePush : Bool;
	@:optional
	var initialWindowSize : Float;
	@:optional
	var maxFrameSize : Float;
	@:optional
	var maxConcurrentStreams : Float;
	@:optional
	var maxHeaderListSize : Float;
	@:optional
	var enableConnectProtocol : Bool;
};