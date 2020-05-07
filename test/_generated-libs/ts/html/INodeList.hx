package ts.html;
/**
	NodeList objects are collections of nodes, usually returned by properties such as Node.childNodes and methods such as document.querySelectorAll().
**/
typedef INodeList = {
	/**
		Returns the number of nodes in the collection.
	**/
	final length : Float;
	/**
		Returns the node with index index from the collection. The nodes are sorted in tree order.
	**/
	function item(index:Float):Null<Node>;
	/**
		Performs the specified action for each node in an list.
	**/
	function forEach(callbackfn:(value:Node, key:Float, parent:NodeList) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():ts.lib.IterableIterator<ts.Tuple2<Float, Node>>;
	/**
		Returns an list of keys in the list.
	**/
	function keys():ts.lib.IterableIterator<Float>;
	/**
		Returns an list of values in the list.
	**/
	function values():ts.lib.IterableIterator<Node>;
};