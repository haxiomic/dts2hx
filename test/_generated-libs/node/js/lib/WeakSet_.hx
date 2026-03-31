package js.lib;

@:native("WeakSet") extern class WeakSet_<T:(Dynamic)> {
	@:overload(function<T:(Dynamic)>(iterable:Iterable<T>):WeakSet_<T> { })
	function new<T:(Dynamic)>(?values:haxe.ds.ReadOnlyArray<T>);
	function add(value:T):WeakSet_<T>;
	function delete(value:T):Bool;
	function has(value:T):Bool;
	static final prototype : WeakSet_<Dynamic>;
}