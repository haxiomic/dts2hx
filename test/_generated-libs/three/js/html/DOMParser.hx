package js.html;
/**
	Provides the ability to parse XML or HTML source code from a string into a DOM Document.
**/
@:native("DOMParser") extern class DOMParser {
	function new();
	function parseFromString(str:String, type:String):IDocument;
	static var prototype : IDOMParser;
}