package ts.html;
typedef ISpeechRecognitionResult = {
	final isFinal : Bool;
	final length : Float;
	function item(index:Float):SpeechRecognitionAlternative;
};