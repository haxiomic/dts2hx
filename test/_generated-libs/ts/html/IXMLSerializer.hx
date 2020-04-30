package ts.html;
/**
	Provides the serializeToString() method to construct an XML string representing a DOM tree.
**/
extern typedef IXMLSerializer = {
	function serializeToString(root:INode):String;
};