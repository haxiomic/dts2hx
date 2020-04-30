package ts.lib;
extern typedef IMap<K, V> = {
	function clear():Void;
	function delete(key:K):Bool;
	function forEach(callbackfn:(value:V, key:K, map:IMap<K, V>) -> Void, ?thisArg:Any):Void;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	function set(key:K, value:V):IMap<K, V>;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():IterableIterator<ts.lib.Tuple2<K, V>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():IterableIterator<K>;
	/**
		Returns an iterable of values in the map
	**/
	function values():IterableIterator<V>;
};