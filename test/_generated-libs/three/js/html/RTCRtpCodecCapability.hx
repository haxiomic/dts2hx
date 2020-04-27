package js.html;
extern interface RTCRtpCodecCapability {
	@:optional
	var channels : Float;
	var clockRate : Float;
	var mimeType : String;
	@:optional
	var sdpFmtpLine : String;
}