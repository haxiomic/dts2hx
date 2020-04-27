package js.lib;
/**
	NodeList objects are collections of nodes, usually returned by properties such as Node.childNodes and methods such as document.querySelectorAll().
**/
@:native("NodeList") @tsInterface extern class NodeList {
	function new();
	/**
		Returns the number of nodes in the collection.
	**/
	final length : Float;
	/**
		Returns the node with index index from the collection. The nodes are sorted in tree order.
	**/
	function item(index:Float):Null<js.html.Node>;
	/**
		Performs the specified action for each node in an list.
	**/
	function forEach(callbackfn:(value:js.html.Node, key:Float, parent:NodeList) -> Void, ?thisArg:Any):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():IterableIterator<js.lib.Tuple2<Float, js.html.Node>>;
	/**
		Returns an list of keys in the list.
	**/
	function keys():IterableIterator<Float>;
	/**
		Returns an list of values in the list.
	**/
	function values():IterableIterator<js.html.Node>;
	static var prototype : NodeList;
}