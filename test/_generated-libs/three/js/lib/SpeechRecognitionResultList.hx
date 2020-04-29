package js.lib;
@:native("SpeechRecognitionResultList") extern class SpeechRecognitionResultList {
	function new();
	final length : Float;
	function item(index:Float):ISpeechRecognitionResult;
	static var prototype : ISpeechRecognitionResultList;
}