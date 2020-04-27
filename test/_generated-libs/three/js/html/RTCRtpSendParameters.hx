package js.html;
extern typedef RTCRtpSendParameters = RTCRtpParameters & { @:optional
	var degradationPreference : String; var encodings : std.Array<RTCRtpEncodingParameters>; var transactionId : String; };