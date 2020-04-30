package ts.html;
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
	function getStats():ts.lib.IPromise<ts.lib.IRTCStatsReport>;
	function replaceTrack(withTrack:Null<IMediaStreamTrack>):ts.lib.IPromise<Void>;
	function setParameters(parameters:RTCRtpSendParameters):ts.lib.IPromise<Void>;
	function setStreams(streams:haxe.extern.Rest<IMediaStream>):Void;
	static var prototype : IRTCRtpSender;
	static function getCapabilities(kind:String):Null<RTCRtpCapabilities>;
}