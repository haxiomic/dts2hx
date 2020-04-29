package js.lib;
/**
	The SVGNumberList defines a list of SVGNumber objects.
**/
@:native("SVGNumberList") extern class SVGNumberList {
	function new();
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:js.html.ISVGNumber):js.html.ISVGNumber;
	function clear():Void;
	function getItem(index:Float):js.html.ISVGNumber;
	function initialize(newItem:js.html.ISVGNumber):js.html.ISVGNumber;
	function insertItemBefore(newItem:js.html.ISVGNumber, index:Float):js.html.ISVGNumber;
	function removeItem(index:Float):js.html.ISVGNumber;
	function replaceItem(newItem:js.html.ISVGNumber, index:Float):js.html.ISVGNumber;
	static var prototype : ISVGNumberList;
}