package ts.html;
/**
	A CDATA section that can be used within XML to include extended portions of unescaped text. The symbols < and & don’t need escaping as they normally do when inside a CDATA section.
**/
@:native("CDATASection") extern class CDATASection {
	function new();
	static var prototype : ICDATASection;
}