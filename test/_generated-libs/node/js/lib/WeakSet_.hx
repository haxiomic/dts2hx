package js.lib;

@:native("WeakSet") extern class WeakSet_<T:(Dynamic)> {
	@:overload(function<T:(Dynamic)>(iterable:Iterable<T, Dynamic, Dynamic>):WeakSet_<T> { })
	function new<T:(Dynamic)>(?values:haxe.ds.ReadOnlyArray<T>);
	/**
		Appends a new value to the end of the WeakSet.
	**/
	function add(value:T):WeakSet_<T>;
	/**
		Removes the specified element from the WeakSet.
	**/
	function delete(value:T):Bool;
	function has(value:T):Bool;
	static final prototype : WeakSet_<Dynamic>;
}