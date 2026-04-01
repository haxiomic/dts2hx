package js.lib;

@:native("WeakMap") extern class WeakMap_<K:(Dynamic), V> {
	@:overload(function<K:(Dynamic), V>(iterable:Iterable<ts.Tuple2<K, V>, Dynamic, Dynamic>):WeakMap_<K, V> { })
	function new<K:(Dynamic), V>(?entries:haxe.ds.ReadOnlyArray<ts.Tuple2<K, V>>);
	/**
		Removes the specified element from the WeakMap.
	**/
	function delete(key:K):Bool;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	/**
		Adds a new element with a specified key and value.
	**/
	function set(key:K, value:V):WeakMap_<K, V>;
	static final prototype : WeakMap_<Dynamic, Dynamic>;
}