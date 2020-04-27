package js.html;
extern interface RTCRtpCapabilities {
	var codecs : std.Array<RTCRtpCodecCapability>;
	var headerExtensions : std.Array<RTCRtpHeaderExtensionCapability>;
}