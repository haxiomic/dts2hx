package js.html;
/**
	An iterator over the members of a list of the nodes in a subtree of the DOM. The nodes will be returned in document order.
**/
@:native("NodeIterator") @tsInterface extern class NodeIterator {
	function new();
	final filter : Null<NodeFilter>;
	final pointerBeforeReferenceNode : Bool;
	final referenceNode : Node;
	final root : Node;
	final whatToShow : Float;
	function detach():Void;
	function nextNode():Null<Node>;
	function previousNode():Null<Node>;
	static var prototype : NodeIterator;
}