package js.lib;
@:native("RTCRtpTransceiver") @tsInterface extern class RTCRtpTransceiver {
	function new();
	final currentDirection : Null<String>;
	var direction : String;
	final mid : Null<String>;
	final receiver : js.html.RTCRtpReceiver;
	final sender : js.html.RTCRtpSender;
	final stopped : Bool;
	@:overload(function(codecs:Iterable<js.html.RTCRtpCodecCapability>):Void { })
	function setCodecPreferences(codecs:std.Array<js.html.RTCRtpCodecCapability>):Void;
	function stop():Void;
	static var prototype : RTCRtpTransceiver;
}