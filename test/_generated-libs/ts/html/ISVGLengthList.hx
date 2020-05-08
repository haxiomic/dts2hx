package ts.html;
/**
	The SVGLengthList defines a list of SVGLength objects.
**/
typedef ISVGLengthList = {
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:SVGLength):SVGLength;
	function clear():Void;
	function getItem(index:Float):SVGLength;
	function initialize(newItem:SVGLength):SVGLength;
	function insertItemBefore(newItem:SVGLength, index:Float):SVGLength;
	function removeItem(index:Float):SVGLength;
	function replaceItem(newItem:SVGLength, index:Float):SVGLength;
};