package node.http2;
extern interface SessionOptions {
	@:optional
	var maxDeflateDynamicTableSize : Null<Float>;
	@:optional
	var maxReservedRemoteStreams : Null<Float>;
	@:optional
	var maxSendHeaderBlockLength : Null<Float>;
	@:optional
	var paddingStrategy : Null<Float>;
	@:optional
	var peerMaxConcurrentStreams : Null<Float>;
	@:optional
	var selectPadding : Null<(frameLen:Float, maxFrameLen:Float) -> Float>;
	@:optional
	var settings : Null<Settings>;
	@:optional
	var createConnection : Null<(option:SessionOptions) -> node.stream.Duplex>;
}