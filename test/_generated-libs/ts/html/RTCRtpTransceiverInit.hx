package ts.html;
typedef RTCRtpTransceiverInit = {
	@:optional
	var direction : String;
	@:optional
	var sendEncodings : std.Array<RTCRtpEncodingParameters>;
	@:optional
	var streams : std.Array<IMediaStream>;
};