package js.lib;
/**
	The SVGLengthList defines a list of SVGLength objects.
**/
@:native("SVGLengthList") @tsInterface extern class SVGLengthList {
	function new();
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:js.html.SVGLength):js.html.SVGLength;
	function clear():Void;
	function getItem(index:Float):js.html.SVGLength;
	function initialize(newItem:js.html.SVGLength):js.html.SVGLength;
	function insertItemBefore(newItem:js.html.SVGLength, index:Float):js.html.SVGLength;
	function removeItem(index:Float):js.html.SVGLength;
	function replaceItem(newItem:js.html.SVGLength, index:Float):js.html.SVGLength;
	static var prototype : SVGLengthList;
}