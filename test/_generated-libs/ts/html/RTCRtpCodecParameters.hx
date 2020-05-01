package ts.html;
typedef RTCRtpCodecParameters = {
	@:optional
	var channels : Float;
	var clockRate : Float;
	var mimeType : String;
	var payloadType : Float;
	@:optional
	var sdpFmtpLine : String;
};