package js.lib;

typedef IMap_<K, V> = {
	/**
		Removes all elements from the Map.
	**/
	function clear():Void;
	function delete(key:K):Bool;
	/**
		Executes a provided function once per each key/value pair in the Map, in insertion order.
	**/
	function forEach(callbackfn:(value:V, key:K, map:js.lib.Map<K, V>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns a specified element from the Map object. If the value that is associated to the provided key is an object, then you will get a reference to that object and any change made to that object will effectively modify it inside the Map.
	**/
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	/**
		Adds a new element with a specified key and value to the Map. If an element with the same key already exists, the element will be updated.
	**/
	function set(key:K, value:V):js.lib.Map<K, V>;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():MapIterator<ts.Tuple2<K, V>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():MapIterator<K>;
	/**
		Returns an iterable of values in the map
	**/
	function values():MapIterator<V>;
};