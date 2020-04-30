package ts.html;
/**
	This Web Speech API interface contains information about the current state of SpeechSynthesisUtterance objects that have been processed in the speech service.
**/
@:native("SpeechSynthesisEvent") extern class SpeechSynthesisEvent {
	function new();
	final charIndex : Float;
	final elapsedTime : Float;
	final name : String;
	final utterance : ISpeechSynthesisUtterance;
	static var prototype : ISpeechSynthesisEvent;
}