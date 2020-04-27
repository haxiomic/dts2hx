package js.lib;
/**
	A collection of Attr objects. Objects inside a NamedNodeMap are not in any particular order, unlike NodeList, although they may be accessed by an index as in an array.
**/
@:native("NamedNodeMap") @tsInterface extern class NamedNodeMap {
	function new();
	final length : Float;
	function getNamedItem(qualifiedName:String):Null<js.html.Attr>;
	function getNamedItemNS(namespace:Null<String>, localName:String):Null<js.html.Attr>;
	function item(index:Float):Null<js.html.Attr>;
	function removeNamedItem(qualifiedName:String):js.html.Attr;
	function removeNamedItemNS(namespace:Null<String>, localName:String):js.html.Attr;
	function setNamedItem(attr:js.html.Attr):Null<js.html.Attr>;
	function setNamedItemNS(attr:js.html.Attr):Null<js.html.Attr>;
	static var prototype : NamedNodeMap;
}