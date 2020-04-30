package ts.html;
@:native("RTCTrackEvent") extern class RTCTrackEvent {
	function new(type:String, eventInitDict:RTCTrackEventInit);
	final receiver : IRTCRtpReceiver;
	final streams : ts.lib.ReadonlyArray<IMediaStream>;
	final track : IMediaStreamTrack;
	final transceiver : ts.lib.IRTCRtpTransceiver;
	static var prototype : IRTCTrackEvent;
}