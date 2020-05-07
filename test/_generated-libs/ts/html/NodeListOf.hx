package ts.html;
typedef NodeListOf<TNode> = {
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
	function forEach(callbackfn:(value:TNode, key:Float, parent:NodeListOf<TNode>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():ts.lib.IterableIterator<ts.Tuple2<Float, TNode>>;
	/**
		Returns an list of keys in the list.
	**/
	function keys():ts.lib.IterableIterator<Float>;
	/**
		Returns an list of values in the list.
	**/
	function values():ts.lib.IterableIterator<TNode>;
};