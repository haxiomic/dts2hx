package ts.html;
typedef ISVGPointList = {
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:DOMPoint):DOMPoint;
	function clear():Void;
	function getItem(index:Float):DOMPoint;
	function initialize(newItem:DOMPoint):DOMPoint;
	function insertItemBefore(newItem:DOMPoint, index:Float):DOMPoint;
	function removeItem(index:Float):DOMPoint;
	function replaceItem(newItem:DOMPoint, index:Float):DOMPoint;
};