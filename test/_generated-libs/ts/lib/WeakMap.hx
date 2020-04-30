package ts.lib;
@:native("WeakMap") extern class WeakMap<K, V> {
	@:overload(function<K, V>(iterable:Iterable<ts.lib.Tuple2<K, V>>):IWeakMap<K, V> { })
	function new(?entries:ReadonlyArray<ts.lib.Tuple2<K, V>>);
	function delete(key:K):Bool;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	function set(key:K, value:V):IWeakMap<K, V>;
	static final prototype : IWeakMap<Any, Any>;
}