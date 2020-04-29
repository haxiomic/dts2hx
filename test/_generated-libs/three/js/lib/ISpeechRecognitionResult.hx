package js.lib;
extern typedef ISpeechRecognitionResult = {
	final isFinal : Bool;
	final length : Float;
	function item(index:Float):js.html.ISpeechRecognitionAlternative;
};