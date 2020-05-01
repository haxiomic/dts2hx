package ts.lib;
typedef IRTCRtpTransceiver = {
	final currentDirection : Null<String>;
	var direction : String;
	final mid : Null<String>;
	final receiver : ts.html.IRTCRtpReceiver;
	final sender : ts.html.IRTCRtpSender;
	final stopped : Bool;
	@:overload(function(codecs:Iterable<ts.html.RTCRtpCodecCapability>):Void { })
	function setCodecPreferences(codecs:std.Array<ts.html.RTCRtpCodecCapability>):Void;
	function stop():Void;
};