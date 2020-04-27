package js.html;
extern typedef RTCTrackEventInit = EventInit & { var receiver : RTCRtpReceiver; @:optional
	var streams : std.Array<MediaStream>; var track : MediaStreamTrack; var transceiver : js.lib.RTCRtpTransceiver; };