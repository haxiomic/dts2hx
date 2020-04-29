package js.lib;
@:native("WeakMap") extern class WeakMap<K:(Any), V> {
	@:overload(function<K:(Any), V>(iterable:Iterable<js.lib.Tuple2<K, V>>):IWeakMap<K, V> { })
	function new(?entries:ReadonlyArray<js.lib.Tuple2<K, V>>);
	function delete(key:K):Bool;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	function set(key:K, value:V):IWeakMap<K, V>;
	static final prototype : IWeakMap<Any, Any>;
}