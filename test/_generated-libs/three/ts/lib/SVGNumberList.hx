package ts.lib;
/**
	The SVGNumberList defines a list of SVGNumber objects.
**/
@:native("SVGNumberList") extern class SVGNumberList {
	function new();
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:ts.html.ISVGNumber):ts.html.ISVGNumber;
	function clear():Void;
	function getItem(index:Float):ts.html.ISVGNumber;
	function initialize(newItem:ts.html.ISVGNumber):ts.html.ISVGNumber;
	function insertItemBefore(newItem:ts.html.ISVGNumber, index:Float):ts.html.ISVGNumber;
	function removeItem(index:Float):ts.html.ISVGNumber;
	function replaceItem(newItem:ts.html.ISVGNumber, index:Float):ts.html.ISVGNumber;
	static var prototype : ISVGNumberList;
}