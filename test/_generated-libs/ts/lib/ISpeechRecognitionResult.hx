package ts.lib;
typedef ISpeechRecognitionResult = {
	final isFinal : Bool;
	final length : Float;
	function item(index:Float):ts.html.ISpeechRecognitionAlternative;
};