package js.html;
extern interface RTCRtpCodecParameters {
	@:optional
	var channels : Float;
	var clockRate : Float;
	var mimeType : String;
	var payloadType : Float;
	@:optional
	var sdpFmtpLine : String;
}