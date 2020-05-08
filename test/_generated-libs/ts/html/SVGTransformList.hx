package ts.html;
/**
	The SVGTransformList defines a list of SVGTransform objects.
**/
@:native("SVGTransformList") extern class SVGTransformList {
	function new();
	final numberOfItems : Float;
	function appendItem(newItem:SVGTransform):SVGTransform;
	function clear():Void;
	function consolidate():SVGTransform;
	function createSVGTransformFromMatrix(matrix:DOMMatrix):SVGTransform;
	function getItem(index:Float):SVGTransform;
	function initialize(newItem:SVGTransform):SVGTransform;
	function insertItemBefore(newItem:SVGTransform, index:Float):SVGTransform;
	function removeItem(index:Float):SVGTransform;
	function replaceItem(newItem:SVGTransform, index:Float):SVGTransform;
	static var prototype : SVGTransformList;
}