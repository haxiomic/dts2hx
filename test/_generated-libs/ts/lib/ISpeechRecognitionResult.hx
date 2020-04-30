package ts.lib;
extern typedef ISpeechRecognitionResult = {
	final isFinal : Bool;
	final length : Float;
	function item(index:Float):ts.html.ISpeechRecognitionAlternative;
};