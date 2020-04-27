package js.html;
/**
	An object used to filter the nodes in a NodeIterator or TreeWalker. They don't know anything about the DOM or how to traverse nodes; they just know how to evaluate a single node against the provided filter.
**/
extern interface NodeFilter {
	function acceptNode(node:Node):Float;
}