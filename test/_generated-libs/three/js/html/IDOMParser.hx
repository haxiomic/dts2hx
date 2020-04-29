package js.html;
/**
	Provides the ability to parse XML or HTML source code from a string into a DOM Document.
**/
extern typedef IDOMParser = {
	function parseFromString(str:String, type:String):IDocument;
};