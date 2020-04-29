package js.html;
/**
	The SVGTransformList defines a list of SVGTransform objects.
**/
extern typedef ISVGTransformList = {
	final numberOfItems : Float;
	function appendItem(newItem:ISVGTransform):ISVGTransform;
	function clear():Void;
	function consolidate():ISVGTransform;
	function createSVGTransformFromMatrix(matrix:IDOMMatrix):ISVGTransform;
	function getItem(index:Float):ISVGTransform;
	function initialize(newItem:ISVGTransform):ISVGTransform;
	function insertItemBefore(newItem:ISVGTransform, index:Float):ISVGTransform;
	function removeItem(index:Float):ISVGTransform;
	function replaceItem(newItem:ISVGTransform, index:Float):ISVGTransform;
};