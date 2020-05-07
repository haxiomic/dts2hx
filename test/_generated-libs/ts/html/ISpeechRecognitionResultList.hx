package ts.html;
typedef ISpeechRecognitionResultList = {
	final length : Float;
	function item(index:Float):SpeechRecognitionResult;
};