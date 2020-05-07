package ts.html;
/**
	This WebRTC API interface manages the reception and decoding of data for a MediaStreamTrack on an RTCPeerConnection.
**/
typedef IRTCRtpReceiver = {
	final rtcpTransport : Null<RTCDtlsTransport>;
	final track : MediaStreamTrack;
	final transport : Null<RTCDtlsTransport>;
	function getContributingSources():Array<RTCRtpContributingSource>;
	function getParameters():RTCRtpReceiveParameters;
	function getStats():ts.lib.Promise<RTCStatsReport>;
	function getSynchronizationSources():Array<RTCRtpSynchronizationSource>;
};