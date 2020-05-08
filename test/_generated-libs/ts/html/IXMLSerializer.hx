package ts.html;
/**
	Provides the serializeToString() method to construct an XML string representing a DOM tree.
**/
typedef IXMLSerializer = {
	function serializeToString(root:Node):String;
};