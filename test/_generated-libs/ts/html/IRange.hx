package ts.html;
/**
	A fragment of a document that can contain nodes and parts of text nodes.
**/
typedef IRange = {
	/**
		Returns the node, furthest away from the document, that is an ancestor of both range's start node and end node.
	**/
	final commonAncestorContainer : Node;
	function cloneContents():DocumentFragment;
	function cloneRange():Range;
	function collapse(?toStart:Bool):Void;
	function compareBoundaryPoints(how:Float, sourceRange:Range):Float;
	/**
		Returns −1 if the point is before the range, 0 if the point is in the range, and 1 if the point is after the range.
	**/
	function comparePoint(node:Node, offset:Float):Float;
	function createContextualFragment(fragment:String):DocumentFragment;
	function deleteContents():Void;
	function detach():Void;
	function extractContents():DocumentFragment;
	function getBoundingClientRect():DOMRect;
	function getClientRects():DOMRectList;
	function insertNode(node:Node):Void;
	/**
		Returns whether range intersects node.
	**/
	function intersectsNode(node:Node):Bool;
	function isPointInRange(node:Node, offset:Float):Bool;
	function selectNode(node:Node):Void;
	function selectNodeContents(node:Node):Void;
	function setEnd(node:Node, offset:Float):Void;
	function setEndAfter(node:Node):Void;
	function setEndBefore(node:Node):Void;
	function setStart(node:Node, offset:Float):Void;
	function setStartAfter(node:Node):Void;
	function setStartBefore(node:Node):Void;
	function surroundContents(newParent:Node):Void;
	final END_TO_END : Float;
	final END_TO_START : Float;
	final START_TO_END : Float;
	final START_TO_START : Float;
	/**
		Returns true if range is collapsed, and false otherwise.
	**/
	final collapsed : Bool;
	/**
		Returns range's end node.
	**/
	final endContainer : Node;
	/**
		Returns range's end offset.
	**/
	final endOffset : Float;
	/**
		Returns range's start node.
	**/
	final startContainer : Node;
	/**
		Returns range's start offset.
	**/
	final startOffset : Float;
};