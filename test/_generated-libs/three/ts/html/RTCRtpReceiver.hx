package ts.html;
/**
	This WebRTC API interface manages the reception and decoding of data for a MediaStreamTrack on an RTCPeerConnection.
**/
@:native("RTCRtpReceiver") extern class RTCRtpReceiver {
	function new();
	final rtcpTransport : Null<IRTCDtlsTransport>;
	final track : IMediaStreamTrack;
	final transport : Null<IRTCDtlsTransport>;
	function getContributingSources():std.Array<RTCRtpContributingSource>;
	function getParameters():RTCRtpReceiveParameters;
	function getStats():ts.lib.IPromise<ts.lib.IRTCStatsReport>;
	function getSynchronizationSources():std.Array<RTCRtpSynchronizationSource>;
	static var prototype : IRTCRtpReceiver;
	static function getCapabilities(kind:String):Null<RTCRtpCapabilities>;
}