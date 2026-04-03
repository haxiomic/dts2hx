package js.html;

/**
	The **`CustomStateSet`** interface of the Document Object Model stores a list of states for an autonomous custom element, and allows states to be added and removed from the set.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CustomStateSet)
**/
typedef ICustomStateSet = {
	function forEach(callbackfn:(value:String, key:String, parent:CustomStateSet) -> Void, ?thisArg:Dynamic):Void;
	/**
		Appends a new element with a specified value to the end of the Set.
	**/
	function add(value:String):CustomStateSet;
	function clear():Void;
	/**
		Removes a specified value from the Set.
	**/
	function delete(value:String):Bool;
	function has(value:String):Bool;
	final size : Float;
	/**
		Returns an iterable of [v,v] pairs for every value `v` in the set.
	**/
	function entries():js.lib.SetIterator<ts.Tuple2<String, String>>;
	/**
		Despite its name, returns an iterable of the values in the set.
	**/
	function keys():js.lib.SetIterator<String>;
	/**
		Returns an iterable of values in the set.
	**/
	function values():js.lib.SetIterator<String>;
};