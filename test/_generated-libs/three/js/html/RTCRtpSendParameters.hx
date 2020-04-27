package js.html;
extern interface RTCRtpSendParameters extends RTCRtpParameters {
	@:optional
	var degradationPreference : String;
	var encodings : std.Array<RTCRtpEncodingParameters>;
	var transactionId : String;
}