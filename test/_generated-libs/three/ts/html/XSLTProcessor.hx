package ts.html;
/**
	An XSLTProcessor applies an XSLT stylesheet transformation to an XML document to produce a new XML document as output. It has methods to load the XSLT stylesheet, to manipulate <xsl:param> parameter values, and to apply the transformation to documents.
**/
@:native("XSLTProcessor") extern class XSLTProcessor {
	function new();
	function clearParameters():Void;
	function getParameter(namespaceURI:String, localName:String):Any;
	function importStylesheet(style:INode):Void;
	function removeParameter(namespaceURI:String, localName:String):Void;
	function reset():Void;
	function setParameter(namespaceURI:String, localName:String, value:Any):Void;
	function transformToDocument(source:INode):IDocument;
	function transformToFragment(source:INode, document:IDocument):IDocumentFragment;
	static var prototype : IXSLTProcessor;
}