package ts.html;
typedef ISVGPathSegList = {
	final numberOfItems : Float;
	function appendItem(newItem:ISVGPathSeg):ISVGPathSeg;
	function clear():Void;
	function getItem(index:Float):ISVGPathSeg;
	function initialize(newItem:ISVGPathSeg):ISVGPathSeg;
	function insertItemBefore(newItem:ISVGPathSeg, index:Float):ISVGPathSeg;
	function removeItem(index:Float):ISVGPathSeg;
	function replaceItem(newItem:ISVGPathSeg, index:Float):ISVGPathSeg;
};