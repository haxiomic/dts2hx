package js.lib;

@:native("WeakMap") extern class WeakMap_<K, V> {
	@:overload(function<K, V>(iterable:Iterable<ts.Tuple2<K, V>>):WeakMap_<K, V> { })
	function new<K, V>(?entries:haxe.ds.ReadOnlyArray<ts.Tuple2<K, V>>);
	function delete(key:K):Bool;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	function set(key:K, value:V):WeakMap_<K, V>;
	static final prototype : WeakMap_<Dynamic, Dynamic>;
}