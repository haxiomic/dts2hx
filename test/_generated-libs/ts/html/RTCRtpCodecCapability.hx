package ts.html;
typedef RTCRtpCodecCapability = {
	@:optional
	var channels : Float;
	var clockRate : Float;
	var mimeType : String;
	@:optional
	var sdpFmtpLine : String;
};