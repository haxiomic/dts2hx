package js.html;
@:native("RadioNodeList") @tsInterface extern class RadioNodeList {
	function new();
	var value : String;
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
	function forEach(callbackfn:(value:Node, key:Float, parent:js.lib.NodeList) -> Void, ?thisArg:Any):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():js.lib.IterableIterator<js.lib.Tuple2<Float, Node>>;
	/**
		Returns an list of keys in the list.
	**/
	function keys():js.lib.IterableIterator<Float>;
	/**
		Returns an list of values in the list.
	**/
	function values():js.lib.IterableIterator<Node>;
	static var prototype : RadioNodeList;
}