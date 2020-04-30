package ts.html;
/**
	An iterator over the members of a list of the nodes in a subtree of the DOM. The nodes will be returned in document order.
**/
extern typedef INodeIterator = {
	final filter : Null<NodeFilter>;
	final pointerBeforeReferenceNode : Bool;
	final referenceNode : INode;
	final root : INode;
	final whatToShow : Float;
	function detach():Void;
	function nextNode():Null<INode>;
	function previousNode():Null<INode>;
};