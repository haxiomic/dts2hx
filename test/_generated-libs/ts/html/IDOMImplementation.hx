package ts.html;
/**
	An object providing methods which are not dependent on any particular document. Such an object is returned by the Document.implementation property.
**/
typedef IDOMImplementation = {
	function createDocument(namespaceURI:Null<String>, qualifiedName:Null<String>, doctype:Null<IDocumentType>):IDocument;
	function createDocumentType(qualifiedName:String, publicId:String, systemId:String):IDocumentType;
	function createHTMLDocument(?title:String):IDocument;
	function hasFeature(args:haxe.extern.Rest<Dynamic>):Bool;
};