package node.http2;
extern interface SessionState {
	@:optional
	var effectiveLocalWindowSize : Null<Float>;
	@:optional
	var effectiveRecvDataLength : Null<Float>;
	@:optional
	var nextStreamID : Null<Float>;
	@:optional
	var localWindowSize : Null<Float>;
	@:optional
	var lastProcStreamID : Null<Float>;
	@:optional
	var remoteWindowSize : Null<Float>;
	@:optional
	var outboundQueueSize : Null<Float>;
	@:optional
	var deflateDynamicTableSize : Null<Float>;
	@:optional
	var inflateDynamicTableSize : Null<Float>;
}