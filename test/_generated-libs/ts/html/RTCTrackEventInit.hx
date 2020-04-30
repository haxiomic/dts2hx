package ts.html;
extern typedef RTCTrackEventInit = {
	var receiver : IRTCRtpReceiver;
	@:optional
	var streams : std.Array<IMediaStream>;
	var track : IMediaStreamTrack;
	var transceiver : ts.lib.IRTCRtpTransceiver;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};