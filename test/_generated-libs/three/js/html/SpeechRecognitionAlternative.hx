package js.html;
@:native("SpeechRecognitionAlternative") @tsInterface extern class SpeechRecognitionAlternative {
	function new();
	final confidence : Float;
	final transcript : String;
	static var prototype : SpeechRecognitionAlternative;
}