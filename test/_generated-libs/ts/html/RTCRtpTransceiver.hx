package ts.html;
@:native("RTCRtpTransceiver") extern class RTCRtpTransceiver {
	function new();
	final currentDirection : Null<String>;
	var direction : RTCRtpTransceiverDirection;
	final mid : Null<String>;
	final receiver : RTCRtpReceiver;
	final sender : RTCRtpSender;
	final stopped : Bool;
	@:overload(function(codecs:ts.lib.Iterable<RTCRtpCodecCapability>):Void { })
	function setCodecPreferences(codecs:Array<RTCRtpCodecCapability>):Void;
	function stop():Void;
	static var prototype : RTCRtpTransceiver;
}