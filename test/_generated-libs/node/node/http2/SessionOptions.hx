package node.http2;

typedef SessionOptions = {
	@:optional
	var maxDeflateDynamicTableSize : Float;
	@:optional
	var maxReservedRemoteStreams : Float;
	@:optional
	var maxSendHeaderBlockLength : Float;
	@:optional
	var paddingStrategy : Float;
	@:optional
	var peerMaxConcurrentStreams : Float;
	@:optional
	dynamic function selectPadding(frameLen:Float, maxFrameLen:Float):Float;
	@:optional
	var settings : Settings;
	@:optional
	dynamic function createConnection(option:SessionOptions):node.stream.Duplex;
};