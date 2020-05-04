package ts.html;
typedef RTCRtpReceiveParameters = {
	var encodings : Array<RTCRtpDecodingParameters>;
	var codecs : Array<RTCRtpCodecParameters>;
	var headerExtensions : Array<RTCRtpHeaderExtensionParameters>;
	var rtcp : RTCRtcpParameters;
};