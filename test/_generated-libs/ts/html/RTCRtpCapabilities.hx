package ts.html;
typedef RTCRtpCapabilities = {
	var codecs : std.Array<RTCRtpCodecCapability>;
	var headerExtensions : std.Array<RTCRtpHeaderExtensionCapability>;
};