package ts.html;
/**
	The nodes of a document subtree and a position within them.
**/
@:native("TreeWalker") extern class TreeWalker {
	function new();
	var currentNode : Node;
	final filter : Null<NodeFilter>;
	final root : Node;
	final whatToShow : Float;
	function firstChild():Null<Node>;
	function lastChild():Null<Node>;
	function nextNode():Null<Node>;
	function nextSibling():Null<Node>;
	function parentNode():Null<Node>;
	function previousNode():Null<Node>;
	function previousSibling():Null<Node>;
	static var prototype : TreeWalker;
}