package ts.lib;
/**
	The SVGLengthList defines a list of SVGLength objects.
**/
@:native("SVGLengthList") extern class SVGLengthList {
	function new();
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:ts.html.ISVGLength):ts.html.ISVGLength;
	function clear():Void;
	function getItem(index:Float):ts.html.ISVGLength;
	function initialize(newItem:ts.html.ISVGLength):ts.html.ISVGLength;
	function insertItemBefore(newItem:ts.html.ISVGLength, index:Float):ts.html.ISVGLength;
	function removeItem(index:Float):ts.html.ISVGLength;
	function replaceItem(newItem:ts.html.ISVGLength, index:Float):ts.html.ISVGLength;
	static var prototype : ISVGLengthList;
}