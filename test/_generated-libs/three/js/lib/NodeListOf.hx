package js.lib;
extern interface NodeListOf<TNode:(js.html.Node)> extends NodeList {
	/**
		Returns the number of nodes in the collection.
	**/
	var length : Float;
	/**
		Returns the node with index index from the collection. The nodes are sorted in tree order.
	**/
	function item(index:Float):TNode;
	/**
		Performs the specified action for each node in an list.
	**/
	function forEach(callbackfn:(value:TNode, key:Float, parent:NodeListOf<TNode>) -> Void, ?thisArg:Any):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():IterableIterator<js.lib.Tuple2<Float, TNode>>;
	/**
		Returns an list of keys in the list.
	**/
	function keys():IterableIterator<Float>;
	/**
		Returns an list of values in the list.
	**/
	function values():IterableIterator<TNode>;
}