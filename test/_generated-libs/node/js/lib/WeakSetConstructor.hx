package js.lib;

typedef WeakSetConstructor = {
	@:overload(function<T:(Dynamic)>(iterable:Iterable<T>):WeakSet_<T> { })
	function new<T:(Dynamic)>(?values:haxe.ds.ReadOnlyArray<T>);
	final prototype : WeakSet_<Dynamic>;
};