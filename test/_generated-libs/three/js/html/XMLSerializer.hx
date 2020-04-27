package js.html;
/**
	Provides the serializeToString() method to construct an XML string representing a DOM tree.
**/
@:native("XMLSerializer") @tsInterface extern class XMLSerializer {
	function new();
	function serializeToString(root:Node):String;
	static var prototype : XMLSerializer;
}