package ts.html;
typedef RTCRtpTransceiverInit = {
	@:optional
	var direction : String;
	@:optional
	var sendEncodings : Array<RTCRtpEncodingParameters>;
	@:optional
	var streams : Array<IMediaStream>;
};