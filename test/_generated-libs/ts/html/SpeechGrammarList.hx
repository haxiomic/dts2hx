package ts.html;
@:native("SpeechGrammarList") extern class SpeechGrammarList {
	function new();
	final length : Float;
	function addFromString(string:String, ?weight:Float):Void;
	function addFromURI(src:String, ?weight:Float):Void;
	function item(index:Float):SpeechGrammar;
	static var prototype : SpeechGrammarList;
}