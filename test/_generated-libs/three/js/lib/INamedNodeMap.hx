package js.lib;
/**
	A collection of Attr objects. Objects inside a NamedNodeMap are not in any particular order, unlike NodeList, although they may be accessed by an index as in an array.
**/
extern typedef INamedNodeMap = {
	final length : Float;
	function getNamedItem(qualifiedName:String):Null<js.html.IAttr>;
	function getNamedItemNS(namespace:Null<String>, localName:String):Null<js.html.IAttr>;
	function item(index:Float):Null<js.html.IAttr>;
	function removeNamedItem(qualifiedName:String):js.html.IAttr;
	function removeNamedItemNS(namespace:Null<String>, localName:String):js.html.IAttr;
	function setNamedItem(attr:js.html.IAttr):Null<js.html.IAttr>;
	function setNamedItemNS(attr:js.html.IAttr):Null<js.html.IAttr>;
};