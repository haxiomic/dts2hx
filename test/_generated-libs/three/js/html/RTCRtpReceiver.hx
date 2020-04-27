package js.html;
/**
	This WebRTC API interface manages the reception and decoding of data for a MediaStreamTrack on an RTCPeerConnection.
**/
@:native("RTCRtpReceiver") @tsInterface extern class RTCRtpReceiver {
	function new();
	final rtcpTransport : Null<RTCDtlsTransport>;
	final track : MediaStreamTrack;
	final transport : Null<RTCDtlsTransport>;
	function getContributingSources():std.Array<RTCRtpContributingSource>;
	function getParameters():RTCRtpReceiveParameters;
	function getStats():js.lib.Promise<js.lib.RTCStatsReport>;
	function getSynchronizationSources():std.Array<RTCRtpSynchronizationSource>;
	static var prototype : RTCRtpReceiver;
	static function getCapabilities(kind:String):Null<RTCRtpCapabilities>;
}