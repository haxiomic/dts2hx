package js.html;
/**
	Provides the ability to control and obtain details about how a particular MediaStreamTrack is encoded and sent to a remote peer.
**/
@:native("RTCRtpSender") extern class RTCRtpSender {
	function new();
	final dtmf : Null<IRTCDTMFSender>;
	final rtcpTransport : Null<IRTCDtlsTransport>;
	final track : Null<IMediaStreamTrack>;
	final transport : Null<IRTCDtlsTransport>;
	function getParameters():RTCRtpSendParameters;
	function getStats():js.lib.IPromise<js.lib.IRTCStatsReport>;
	function replaceTrack(withTrack:Null<IMediaStreamTrack>):js.lib.IPromise<Void>;
	function setParameters(parameters:RTCRtpSendParameters):js.lib.IPromise<Void>;
	function setStreams(streams:std.Array<IMediaStream>):Void;
	static var prototype : IRTCRtpSender;
	static function getCapabilities(kind:String):Null<RTCRtpCapabilities>;
}