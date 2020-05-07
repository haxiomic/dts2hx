package ts.html;
typedef IRTCRtpTransceiver = {
	final currentDirection : Null<String>;
	var direction : RTCRtpTransceiverDirection;
	final mid : Null<String>;
	final receiver : RTCRtpReceiver;
	final sender : RTCRtpSender;
	final stopped : Bool;
	@:overload(function(codecs:ts.lib.Iterable<RTCRtpCodecCapability>):Void { })
	function setCodecPreferences(codecs:Array<RTCRtpCodecCapability>):Void;
	function stop():Void;
};