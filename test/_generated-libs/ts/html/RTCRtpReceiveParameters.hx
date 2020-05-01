package ts.html;
typedef RTCRtpReceiveParameters = {
	var encodings : std.Array<RTCRtpDecodingParameters>;
	var codecs : std.Array<RTCRtpCodecParameters>;
	var headerExtensions : std.Array<RTCRtpHeaderExtensionParameters>;
	var rtcp : RTCRtcpParameters;
};