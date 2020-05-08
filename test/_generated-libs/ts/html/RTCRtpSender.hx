package ts.html;
/**
	Provides the ability to control and obtain details about how a particular MediaStreamTrack is encoded and sent to a remote peer.
**/
@:native("RTCRtpSender") extern class RTCRtpSender {
	function new();
	final dtmf : Null<RTCDTMFSender>;
	final rtcpTransport : Null<RTCDtlsTransport>;
	final track : Null<MediaStreamTrack>;
	final transport : Null<RTCDtlsTransport>;
	function getParameters():RTCRtpSendParameters;
	function getStats():ts.lib.Promise<RTCStatsReport>;
	function replaceTrack(withTrack:Null<MediaStreamTrack>):ts.lib.Promise<Void>;
	function setParameters(parameters:RTCRtpSendParameters):ts.lib.Promise<Void>;
	function setStreams(streams:haxe.extern.Rest<MediaStream>):Void;
	static var prototype : RTCRtpSender;
	static function getCapabilities(kind:String):Null<RTCRtpCapabilities>;
}