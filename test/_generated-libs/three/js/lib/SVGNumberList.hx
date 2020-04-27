package js.lib;
/**
	The SVGNumberList defines a list of SVGNumber objects.
**/
@:native("SVGNumberList") @tsInterface extern class SVGNumberList {
	function new();
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:js.html.SVGNumber):js.html.SVGNumber;
	function clear():Void;
	function getItem(index:Float):js.html.SVGNumber;
	function initialize(newItem:js.html.SVGNumber):js.html.SVGNumber;
	function insertItemBefore(newItem:js.html.SVGNumber, index:Float):js.html.SVGNumber;
	function removeItem(index:Float):js.html.SVGNumber;
	function replaceItem(newItem:js.html.SVGNumber, index:Float):js.html.SVGNumber;
	static var prototype : SVGNumberList;
}