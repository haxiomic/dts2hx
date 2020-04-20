package js.lib;
extern interface Map<K, V> {
	function clear():Void;
	function delete(key:K):Bool;
	function forEach(callbackfn:(value:V, key:K, map:Map<K, V>) -> Void, ?thisArg:Any):Void;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	function set(key:K, value:V):Map<K, V>;
	var size : Float;
	/**
		Returns an iterable of entries in the map.
	**/
	@:native("__@iterator")
	function __AtIterator():IterableIterator<js.lib.Tuple2<Any, K, V>>;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():IterableIterator<js.lib.Tuple2<Any, K, V>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():IterableIterator<K>;
	/**
		Returns an iterable of values in the map
	**/
	function values():IterableIterator<V>;
	@:native("__@toStringTag")
	var __AtToStringTag : String;
}