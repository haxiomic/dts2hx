package ts.html;
/**
	Provides the ability to parse XML or HTML source code from a string into a DOM Document.
**/
typedef IDOMParser = {
	function parseFromString(str:String, type:String):IDocument;
};