package js.lib;
@:native("SpeechRecognitionResult") extern class SpeechRecognitionResult {
	function new();
	final isFinal : Bool;
	final length : Float;
	function item(index:Float):js.html.ISpeechRecognitionAlternative;
	static var prototype : ISpeechRecognitionResult;
}