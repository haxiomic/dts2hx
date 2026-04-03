package js.html;

typedef NodeListOf<TNode:(js.html.Node)> = {
	/**
		Returns a node from a `NodeList` by index.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NodeList/item)
	**/
	function item(index:Float):TNode;
	function forEach(callbackfn:(value:TNode, key:Float, parent:NodeListOf<TNode>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():js.lib.ArrayIterator<ts.Tuple2<Float, TNode>>;
	/**
		Returns an list of keys in the list.
	**/
	function keys():js.lib.ArrayIterator<Float>;
	/**
		Returns an list of values in the list.
	**/
	function values():js.lib.ArrayIterator<TNode>;
	/**
		The **`NodeList.length`** property returns the number of items in a NodeList.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NodeList/length)
	**/
	final length : Float;
};