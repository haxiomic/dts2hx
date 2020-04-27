package js.lib;
extern interface ReadonlyMap<K, V> {
	function forEach(callbackfn:(value:V, key:K, map:ReadonlyMap<K, V>) -> Void, ?thisArg:Any):Void;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():IterableIterator<js.lib.Tuple2<K, V>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():IterableIterator<K>;
	/**
		Returns an iterable of values in the map
	**/
	function values():IterableIterator<V>;
}