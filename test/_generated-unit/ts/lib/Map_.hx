package ts.lib;
@:native("Map") extern class Map_<K, V> {
	@:overload(function<K, V>(?entries:ReadonlyArray<ts.Tuple2<K, V>>):IMap_<K, V> { })
	@:overload(function<K, V>(iterable:Iterable<ts.Tuple2<K, V>>):IMap_<K, V> { })
	function new();
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
	static final prototype : IMap_<Dynamic, Dynamic>;
}