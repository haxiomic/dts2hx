package ts.lib;
@:native("RTCRtpTransceiver") extern class RTCRtpTransceiver {
	function new();
	final currentDirection : Null<String>;
	var direction : ts.html.RTCRtpTransceiverDirection;
	final mid : Null<String>;
	final receiver : ts.html.IRTCRtpReceiver;
	final sender : ts.html.IRTCRtpSender;
	final stopped : Bool;
	@:overload(function(codecs:Iterable<ts.html.RTCRtpCodecCapability>):Void { })
	function setCodecPreferences(codecs:Array<ts.html.RTCRtpCodecCapability>):Void;
	function stop():Void;
	static var prototype : IRTCRtpTransceiver;
}