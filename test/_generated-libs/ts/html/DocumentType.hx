package ts.html;
/**
	A Node containing a doctype.
**/
@:native("DocumentType") extern class DocumentType {
	function new();
	final name : String;
	final publicId : String;
	final systemId : String;
	static var prototype : IDocumentType;
}