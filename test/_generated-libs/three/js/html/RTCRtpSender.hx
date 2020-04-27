package js.html;
/**
	Provides the ability to control and obtain details about how a particular MediaStreamTrack is encoded and sent to a remote peer.
**/
@:native("RTCRtpSender") @tsInterface extern class RTCRtpSender {
	function new();
	final dtmf : Null<RTCDTMFSender>;
	final rtcpTransport : Null<RTCDtlsTransport>;
	final track : Null<MediaStreamTrack>;
	final transport : Null<RTCDtlsTransport>;
	function getParameters():RTCRtpSendParameters;
	function getStats():js.lib.Promise<js.lib.RTCStatsReport>;
	function replaceTrack(withTrack:Null<MediaStreamTrack>):js.lib.Promise<Void>;
	function setParameters(parameters:RTCRtpSendParameters):js.lib.Promise<Void>;
	function setStreams(streams:std.Array<MediaStream>):Void;
	static var prototype : RTCRtpSender;
	static function getCapabilities(kind:String):Null<RTCRtpCapabilities>;
}