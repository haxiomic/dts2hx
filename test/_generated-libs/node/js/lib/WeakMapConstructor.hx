package js.lib;

typedef WeakMapConstructor = {
	@:overload(function<K:(Dynamic), V>(iterable:Iterable<ts.Tuple2<K, V>>):WeakMap_<K, V> { })
	function new<K:(Dynamic), V>(?entries:haxe.ds.ReadOnlyArray<ts.Tuple2<K, V>>);
	final prototype : WeakMap_<Dynamic, Dynamic>;
};