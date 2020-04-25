package node.http2;
extern interface Settings {
	@:optional
	var headerTableSize : Null<Float>;
	@:optional
	var enablePush : Null<Bool>;
	@:optional
	var initialWindowSize : Null<Float>;
	@:optional
	var maxFrameSize : Null<Float>;
	@:optional
	var maxConcurrentStreams : Null<Float>;
	@:optional
	var maxHeaderListSize : Null<Float>;
}