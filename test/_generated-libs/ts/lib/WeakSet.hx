package ts.lib;
@:native("WeakSet") extern class WeakSet<T> {
	@:overload(function<T>(iterable:Iterable<T>):IWeakSet<T> { })
	function new(?values:ReadonlyArray<T>);
	function add(value:T):IWeakSet<T>;
	function delete(value:T):Bool;
	function has(value:T):Bool;
	static final prototype : IWeakSet<Dynamic>;
}