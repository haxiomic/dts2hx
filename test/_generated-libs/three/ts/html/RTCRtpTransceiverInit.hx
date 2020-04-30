package ts.html;
extern typedef RTCRtpTransceiverInit = {
	@:optional
	var direction : String;
	@:optional
	var sendEncodings : std.Array<RTCRtpEncodingParameters>;
	@:optional
	var streams : std.Array<IMediaStream>;
};