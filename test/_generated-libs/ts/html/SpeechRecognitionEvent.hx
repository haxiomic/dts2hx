package ts.html;
@:native("SpeechRecognitionEvent") extern class SpeechRecognitionEvent {
	function new();
	final emma : Null<IDocument>;
	final interpretation : Any;
	final resultIndex : Float;
	final results : ts.lib.ISpeechRecognitionResultList;
	static var prototype : ISpeechRecognitionEvent;
}