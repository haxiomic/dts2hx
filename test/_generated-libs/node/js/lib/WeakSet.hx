package js.lib;
@:native("WeakSet") @tsInterface extern class WeakSet<T:(Any)> {
	@:overload(function<T:(Any)>(iterable:Iterable<T>):WeakSet<T> { })
	function new(?values:ReadonlyArray<T>);
	function add(value:T):WeakSet<T>;
	function delete(value:T):Bool;
	function has(value:T):Bool;
	static final prototype : WeakSet<Any>;
}