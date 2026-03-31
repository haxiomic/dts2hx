package js.lib;

typedef MapConstructor = {
	@:overload(function<K, V>(?entries:haxe.ds.ReadOnlyArray<ts.Tuple2<K, V>>):js.lib.Map<K, V> { })
	@:overload(function<K, V>(iterable:Iterable<ts.Tuple2<K, V>>):js.lib.Map<K, V> { })
	function new();
	final prototype : js.lib.Map<Dynamic, Dynamic>;
};