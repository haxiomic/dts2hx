package ts.html;
extern typedef RTCRtpCapabilities = {
	var codecs : std.Array<RTCRtpCodecCapability>;
	var headerExtensions : std.Array<RTCRtpHeaderExtensionCapability>;
};