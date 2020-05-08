package ts.html;
typedef RTCTrackEventInit = {
	var receiver : RTCRtpReceiver;
	@:optional
	var streams : Array<MediaStream>;
	var track : MediaStreamTrack;
	var transceiver : RTCRtpTransceiver;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};