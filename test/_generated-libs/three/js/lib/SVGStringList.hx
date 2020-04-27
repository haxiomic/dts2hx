package js.lib;
/**
	The SVGStringList defines a list of DOMString objects.
**/
@:native("SVGStringList") @tsInterface extern class SVGStringList {
	function new();
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:String):String;
	function clear():Void;
	function getItem(index:Float):String;
	function initialize(newItem:String):String;
	function insertItemBefore(newItem:String, index:Float):String;
	function removeItem(index:Float):String;
	function replaceItem(newItem:String, index:Float):String;
	static var prototype : SVGStringList;
}