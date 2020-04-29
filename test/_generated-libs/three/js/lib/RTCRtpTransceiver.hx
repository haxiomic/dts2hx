package js.lib;
@:native("RTCRtpTransceiver") extern class RTCRtpTransceiver {
	function new();
	final currentDirection : Null<String>;
	var direction : String;
	final mid : Null<String>;
	final receiver : js.html.IRTCRtpReceiver;
	final sender : js.html.IRTCRtpSender;
	final stopped : Bool;
	@:overload(function(codecs:Iterable<js.html.RTCRtpCodecCapability>):Void { })
	function setCodecPreferences(codecs:std.Array<js.html.RTCRtpCodecCapability>):Void;
	function stop():Void;
	static var prototype : IRTCRtpTransceiver;
}