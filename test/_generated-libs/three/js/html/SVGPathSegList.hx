package js.html;
@:native("SVGPathSegList") @tsInterface extern class SVGPathSegList {
	function new();
	final numberOfItems : Float;
	function appendItem(newItem:SVGPathSeg):SVGPathSeg;
	function clear():Void;
	function getItem(index:Float):SVGPathSeg;
	function initialize(newItem:SVGPathSeg):SVGPathSeg;
	function insertItemBefore(newItem:SVGPathSeg, index:Float):SVGPathSeg;
	function removeItem(index:Float):SVGPathSeg;
	function replaceItem(newItem:SVGPathSeg, index:Float):SVGPathSeg;
	static var prototype : SVGPathSegList;
}