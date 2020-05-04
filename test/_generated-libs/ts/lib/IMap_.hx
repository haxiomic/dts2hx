package ts.lib;
typedef IMap_<K, V> = {
	function clear():Void;
	function delete(key:K):Bool;
	function forEach(callbackfn:(value:V, key:K, map:IMap_<K, V>) -> Void, ?thisArg:Dynamic):Void;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	function set(key:K, value:V):IMap_<K, V>;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():IterableIterator<ts.Tuple2<K, V>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():IterableIterator<K>;
	/**
		Returns an iterable of values in the map
	**/
	function values():IterableIterator<V>;
};