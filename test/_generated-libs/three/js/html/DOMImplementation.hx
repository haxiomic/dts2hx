package js.html;
/**
	An object providing methods which are not dependent on any particular document. Such an object is returned by the Document.implementation property.
**/
@:native("DOMImplementation") @tsInterface extern class DOMImplementation {
	function new();
	function createDocument(namespaceURI:Null<String>, qualifiedName:Null<String>, doctype:Null<DocumentType>):Document;
	function createDocumentType(qualifiedName:String, publicId:String, systemId:String):DocumentType;
	function createHTMLDocument(?title:String):Document;
	function hasFeature(args:std.Array<Any>):Bool;
	static var prototype : DOMImplementation;
}