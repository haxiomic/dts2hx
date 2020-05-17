package node.http2;

typedef SessionState = {
	@:optional
	var effectiveLocalWindowSize : Float;
	@:optional
	var effectiveRecvDataLength : Float;
	@:optional
	var nextStreamID : Float;
	@:optional
	var localWindowSize : Float;
	@:optional
	var lastProcStreamID : Float;
	@:optional
	var remoteWindowSize : Float;
	@:optional
	var outboundQueueSize : Float;
	@:optional
	var deflateDynamicTableSize : Float;
	@:optional
	var inflateDynamicTableSize : Float;
};