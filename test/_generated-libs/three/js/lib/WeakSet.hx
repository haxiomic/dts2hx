package js.lib;
@:native("WeakSet") extern class WeakSet<T:(Any)> {
	@:overload(function<T:(Any)>(iterable:Iterable<T>):IWeakSet<T> { })
	function new(?values:ReadonlyArray<T>);
	function add(value:T):IWeakSet<T>;
	function delete(value:T):Bool;
	function has(value:T):Bool;
	static final prototype : IWeakSet<Any>;
}