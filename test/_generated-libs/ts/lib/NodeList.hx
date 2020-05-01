package ts.lib;
/**
	NodeList objects are collections of nodes, usually returned by properties such as Node.childNodes and methods such as document.querySelectorAll().
**/
@:native("NodeList") extern class NodeList {
	function new();
	/**
		Returns the number of nodes in the collection.
	**/
	final length : Float;
	/**
		Returns the node with index index from the collection. The nodes are sorted in tree order.
	**/
	function item(index:Float):Null<ts.html.INode>;
	/**
		Performs the specified action for each node in an list.
	**/
	function forEach(callbackfn:(value:ts.html.INode, key:Float, parent:INodeList) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():IterableIterator<ts.Tuple2<Float, ts.html.INode>>;
	/**
		Returns an list of keys in the list.
	**/
	function keys():IterableIterator<Float>;
	/**
		Returns an list of values in the list.
	**/
	function values():IterableIterator<ts.html.INode>;
	static var prototype : INodeList;
}