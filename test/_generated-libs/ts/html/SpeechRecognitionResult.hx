package ts.html;
@:native("SpeechRecognitionResult") extern class SpeechRecognitionResult {
	function new();
	final isFinal : Bool;
	final length : Float;
	function item(index:Float):SpeechRecognitionAlternative;
	static var prototype : SpeechRecognitionResult;
}