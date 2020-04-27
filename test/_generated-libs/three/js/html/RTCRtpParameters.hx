package js.html;
extern interface RTCRtpParameters {
	var codecs : std.Array<RTCRtpCodecParameters>;
	var headerExtensions : std.Array<RTCRtpHeaderExtensionParameters>;
	var rtcp : RTCRtcpParameters;
}