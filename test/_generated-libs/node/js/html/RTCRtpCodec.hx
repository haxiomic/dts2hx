package js.html;

typedef RTCRtpCodec = {
	@:optional
	var channels : Float;
	var clockRate : Float;
	var mimeType : String;
	@:optional
	var sdpFmtpLine : String;
};