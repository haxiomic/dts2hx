package ts.html;
/**
	A fragment of a document that can contain nodes and parts of text nodes.
**/
extern typedef IRange = {
	/**
		Returns the node, furthest away from the document, that is an ancestor of both range's start node and end node.
	**/
	final commonAncestorContainer : INode;
	function cloneContents():IDocumentFragment;
	function cloneRange():IRange;
	function collapse(?toStart:Bool):Void;
	function compareBoundaryPoints(how:Float, sourceRange:IRange):Float;
	/**
		Returns −1 if the point is before the range, 0 if the point is in the range, and 1 if the point is after the range.
	**/
	function comparePoint(node:INode, offset:Float):Float;
	function createContextualFragment(fragment:String):IDocumentFragment;
	function deleteContents():Void;
	function detach():Void;
	function extractContents():IDocumentFragment;
	function getBoundingClientRect():IDOMRect;
	function getClientRects():ts.lib.IDOMRectList;
	function insertNode(node:INode):Void;
	/**
		Returns whether range intersects node.
	**/
	function intersectsNode(node:INode):Bool;
	function isPointInRange(node:INode, offset:Float):Bool;
	function selectNode(node:INode):Void;
	function selectNodeContents(node:INode):Void;
	function setEnd(node:INode, offset:Float):Void;
	function setEndAfter(node:INode):Void;
	function setEndBefore(node:INode):Void;
	function setStart(node:INode, offset:Float):Void;
	function setStartAfter(node:INode):Void;
	function setStartBefore(node:INode):Void;
	function surroundContents(newParent:INode):Void;
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
	final endContainer : INode;
	/**
		Returns range's end offset.
	**/
	final endOffset : Float;
	/**
		Returns range's start node.
	**/
	final startContainer : INode;
	/**
		Returns range's start offset.
	**/
	final startOffset : Float;
};