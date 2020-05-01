package ts.html;
typedef RTCRtpSendParameters = {
	@:optional
	var degradationPreference : String;
	var encodings : std.Array<RTCRtpEncodingParameters>;
	var transactionId : String;
	var codecs : std.Array<RTCRtpCodecParameters>;
	var headerExtensions : std.Array<RTCRtpHeaderExtensionParameters>;
	var rtcp : RTCRtcpParameters;
};