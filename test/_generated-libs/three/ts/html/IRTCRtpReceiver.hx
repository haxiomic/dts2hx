package ts.html;
/**
	This WebRTC API interface manages the reception and decoding of data for a MediaStreamTrack on an RTCPeerConnection.
**/
extern typedef IRTCRtpReceiver = {
	final rtcpTransport : Null<IRTCDtlsTransport>;
	final track : IMediaStreamTrack;
	final transport : Null<IRTCDtlsTransport>;
	function getContributingSources():std.Array<RTCRtpContributingSource>;
	function getParameters():RTCRtpReceiveParameters;
	function getStats():ts.lib.IPromise<ts.lib.IRTCStatsReport>;
	function getSynchronizationSources():std.Array<RTCRtpSynchronizationSource>;
};