package ts.html;
typedef RTCRtpSendParameters = {
	@:optional
	var degradationPreference : String;
	var encodings : Array<RTCRtpEncodingParameters>;
	var transactionId : String;
	var codecs : Array<RTCRtpCodecParameters>;
	var headerExtensions : Array<RTCRtpHeaderExtensionParameters>;
	var rtcp : RTCRtcpParameters;
};