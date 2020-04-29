package js.lib;
/**
	The SVGLengthList defines a list of SVGLength objects.
**/
extern typedef ISVGLengthList = {
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:js.html.ISVGLength):js.html.ISVGLength;
	function clear():Void;
	function getItem(index:Float):js.html.ISVGLength;
	function initialize(newItem:js.html.ISVGLength):js.html.ISVGLength;
	function insertItemBefore(newItem:js.html.ISVGLength, index:Float):js.html.ISVGLength;
	function removeItem(index:Float):js.html.ISVGLength;
	function replaceItem(newItem:js.html.ISVGLength, index:Float):js.html.ISVGLength;
};