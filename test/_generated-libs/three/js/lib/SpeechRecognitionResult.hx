package js.lib;
@:native("SpeechRecognitionResult") @tsInterface extern class SpeechRecognitionResult {
	function new();
	final isFinal : Bool;
	final length : Float;
	function item(index:Float):js.html.SpeechRecognitionAlternative;
	static var prototype : SpeechRecognitionResult;
}