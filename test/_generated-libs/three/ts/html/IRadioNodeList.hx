package ts.html;
extern typedef IRadioNodeList = {
	var value : String;
	/**
		Returns the number of nodes in the collection.
	**/
	final length : Float;
	/**
		Returns the node with index index from the collection. The nodes are sorted in tree order.
	**/
	function item(index:Float):Null<INode>;
	/**
		Performs the specified action for each node in an list.
	**/
	function forEach(callbackfn:(value:INode, key:Float, parent:ts.lib.INodeList) -> Void, ?thisArg:Any):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():ts.lib.IterableIterator<ts.lib.Tuple2<Float, INode>>;
	/**
		Returns an list of keys in the list.
	**/
	function keys():ts.lib.IterableIterator<Float>;
	/**
		Returns an list of values in the list.
	**/
	function values():ts.lib.IterableIterator<INode>;
};