package ts.lib;
/**
	A collection of Attr objects. Objects inside a NamedNodeMap are not in any particular order, unlike NodeList, although they may be accessed by an index as in an array.
**/
extern typedef INamedNodeMap = {
	final length : Float;
	function getNamedItem(qualifiedName:String):Null<ts.html.IAttr>;
	function getNamedItemNS(namespace:Null<String>, localName:String):Null<ts.html.IAttr>;
	function item(index:Float):Null<ts.html.IAttr>;
	function removeNamedItem(qualifiedName:String):ts.html.IAttr;
	function removeNamedItemNS(namespace:Null<String>, localName:String):ts.html.IAttr;
	function setNamedItem(attr:ts.html.IAttr):Null<ts.html.IAttr>;
	function setNamedItemNS(attr:ts.html.IAttr):Null<ts.html.IAttr>;
};