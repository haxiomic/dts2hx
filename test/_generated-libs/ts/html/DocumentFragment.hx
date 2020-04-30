package ts.html;
/**
	A minimal document object that has no parent. It is used as a lightweight version of Document that stores a segment of a document structure comprised of nodes just like a standard document. The key difference is that because the document fragment isn't part of the active document tree structure, changes made to the fragment don't affect the document, cause reflow, or incur any performance impact that can occur when changes are made.
**/
@:native("DocumentFragment") extern class DocumentFragment {
	function new();
	/**
		Returns the first element within node's descendants whose ID is elementId.
	**/
	function getElementById(elementId:String):Null<IHTMLElement>;
	static var prototype : IDocumentFragment;
}