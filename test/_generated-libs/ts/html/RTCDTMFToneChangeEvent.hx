package ts.html;
/**
	Events sent to indicate that DTMF tones have started or finished playing. This interface is used by the tonechange event.
**/
@:native("RTCDTMFToneChangeEvent") extern class RTCDTMFToneChangeEvent {
	function new(type:String, eventInitDict:RTCDTMFToneChangeEventInit);
	final tone : String;
	static var prototype : IRTCDTMFToneChangeEvent;
}