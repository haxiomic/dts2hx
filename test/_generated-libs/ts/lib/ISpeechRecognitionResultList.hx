package ts.lib;
typedef ISpeechRecognitionResultList = {
	final length : Float;
	function item(index:Float):ISpeechRecognitionResult;
};