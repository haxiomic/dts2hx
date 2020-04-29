package js.lib;
@:native("SpeechGrammarList") extern class SpeechGrammarList {
	function new();
	final length : Float;
	function addFromString(string:String, ?weight:Float):Void;
	function addFromURI(src:String, ?weight:Float):Void;
	function item(index:Float):js.html.ISpeechGrammar;
	static var prototype : ISpeechGrammarList;
}