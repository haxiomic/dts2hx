package ts.lib;
@:native("Set") extern class Set<T> {
	@:overload(function<T>(?iterable:Iterable<T>):Set<T> { })
	function new<T>(?values:ReadonlyArray<T>);
	function add(value:T):Set<T>;
	function clear():Void;
	function delete(value:T):Bool;
	function forEach(callbackfn:(value:T, value2:T, set:Set<T>) -> Void, ?thisArg:Dynamic):Void;
	function has(value:T):Bool;
	final size : Float;
	/**
		Returns an iterable of [v,v] pairs for every value `v` in the set.
	**/
	function entries():IterableIterator<ts.Tuple2<T, T>>;
	/**
		Despite its name, returns an iterable of the values in the set,
	**/
	function keys():IterableIterator<T>;
	/**
		Returns an iterable of values in the set.
	**/
	function values():IterableIterator<T>;
	static final prototype : Set<Dynamic>;
}