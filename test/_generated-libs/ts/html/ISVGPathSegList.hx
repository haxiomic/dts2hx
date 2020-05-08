package ts.html;
typedef ISVGPathSegList = {
	final numberOfItems : Float;
	function appendItem(newItem:SVGPathSeg):SVGPathSeg;
	function clear():Void;
	function getItem(index:Float):SVGPathSeg;
	function initialize(newItem:SVGPathSeg):SVGPathSeg;
	function insertItemBefore(newItem:SVGPathSeg, index:Float):SVGPathSeg;
	function removeItem(index:Float):SVGPathSeg;
	function replaceItem(newItem:SVGPathSeg, index:Float):SVGPathSeg;
};