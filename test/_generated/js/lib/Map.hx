package js.lib;
@:native("Map") @:interface extern class Map<K, V> {
	@:overload(function<K, V>(?entries:ReadonlyArray<js.lib.Tuple2<K, V>>):Map<K, V> { })
	@:overload(function<K, V>(iterable:Iterable<js.lib.Tuple2<K, V>>):Map<K, V> { })
	function new();
	function clear():Void;
	function delete(key:K):Bool;
	function forEach(callbackfn:(value:V, key:K, map:Map<K, V>) -> Void, ?thisArg:Any):Void;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	function set(key:K, value:V):Map<K, V>;
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
	static final prototype : Map<Any, Any>;
}