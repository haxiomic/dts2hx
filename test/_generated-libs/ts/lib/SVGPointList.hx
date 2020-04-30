package ts.lib;
@:native("SVGPointList") extern class SVGPointList {
	function new();
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:ts.html.IDOMPoint):ts.html.IDOMPoint;
	function clear():Void;
	function getItem(index:Float):ts.html.IDOMPoint;
	function initialize(newItem:ts.html.IDOMPoint):ts.html.IDOMPoint;
	function insertItemBefore(newItem:ts.html.IDOMPoint, index:Float):ts.html.IDOMPoint;
	function removeItem(index:Float):ts.html.IDOMPoint;
	function replaceItem(newItem:ts.html.IDOMPoint, index:Float):ts.html.IDOMPoint;
	static var prototype : ISVGPointList;
}