package ts.html;
/**
	The SVGLengthList defines a list of SVGLength objects.
**/
@:native("SVGLengthList") extern class SVGLengthList {
	function new();
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:SVGLength):SVGLength;
	function clear():Void;
	function getItem(index:Float):SVGLength;
	function initialize(newItem:SVGLength):SVGLength;
	function insertItemBefore(newItem:SVGLength, index:Float):SVGLength;
	function removeItem(index:Float):SVGLength;
	function replaceItem(newItem:SVGLength, index:Float):SVGLength;
	static var prototype : SVGLengthList;
}