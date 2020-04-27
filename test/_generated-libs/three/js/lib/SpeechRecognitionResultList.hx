package js.lib;
@:native("SpeechRecognitionResultList") @tsInterface extern class SpeechRecognitionResultList {
	function new();
	final length : Float;
	function item(index:Float):SpeechRecognitionResult;
	static var prototype : SpeechRecognitionResultList;
}