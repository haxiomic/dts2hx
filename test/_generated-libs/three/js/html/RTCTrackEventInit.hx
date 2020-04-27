package js.html;
extern interface RTCTrackEventInit extends EventInit {
	var receiver : RTCRtpReceiver;
	@:optional
	var streams : std.Array<MediaStream>;
	var track : MediaStreamTrack;
	var transceiver : js.lib.RTCRtpTransceiver;
}