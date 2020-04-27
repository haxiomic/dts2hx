package js.lib;
@:native("SVGPointList") @tsInterface extern class SVGPointList {
	function new();
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:js.html.DOMPoint):js.html.DOMPoint;
	function clear():Void;
	function getItem(index:Float):js.html.DOMPoint;
	function initialize(newItem:js.html.DOMPoint):js.html.DOMPoint;
	function insertItemBefore(newItem:js.html.DOMPoint, index:Float):js.html.DOMPoint;
	function removeItem(index:Float):js.html.DOMPoint;
	function replaceItem(newItem:js.html.DOMPoint, index:Float):js.html.DOMPoint;
	static var prototype : SVGPointList;
}