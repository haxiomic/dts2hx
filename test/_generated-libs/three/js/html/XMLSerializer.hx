package js.html;
/**
	Provides the serializeToString() method to construct an XML string representing a DOM tree.
**/
@:native("XMLSerializer") extern class XMLSerializer {
	function new();
	function serializeToString(root:INode):String;
	static var prototype : IXMLSerializer;
}