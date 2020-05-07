package ts.html;
/**
	A collection of Attr objects. Objects inside a NamedNodeMap are not in any particular order, unlike NodeList, although they may be accessed by an index as in an array.
**/
@:native("NamedNodeMap") extern class NamedNodeMap {
	function new();
	final length : Float;
	function getNamedItem(qualifiedName:String):Null<Attr>;
	function getNamedItemNS(namespace:Null<String>, localName:String):Null<Attr>;
	function item(index:Float):Null<Attr>;
	function removeNamedItem(qualifiedName:String):Attr;
	function removeNamedItemNS(namespace:Null<String>, localName:String):Attr;
	function setNamedItem(attr:Attr):Null<Attr>;
	function setNamedItemNS(attr:Attr):Null<Attr>;
	static var prototype : NamedNodeMap;
}