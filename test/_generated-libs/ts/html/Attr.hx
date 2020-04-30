package ts.html;
/**
	A DOM element's attribute as an object. In most DOM methods, you will probably directly retrieve the attribute as a string (e.g., Element.getAttribute(), but certain functions (e.g., Element.getAttributeNode()) or means of iterating give Attr types.
**/
@:native("Attr") extern class Attr {
	function new();
	final localName : String;
	final name : String;
	final namespaceURI : Null<String>;
	final ownerElement : Null<IElement>;
	final prefix : Null<String>;
	final specified : Bool;
	var value : String;
	static var prototype : IAttr;
}