package js.lib;

typedef ISet<T> = {
	function add(value:T):js.lib.Set<T>;
	function clear():Void;
	function delete(value:T):Bool;
	function forEach(callbackfn:(value:T, value2:T, set:js.lib.Set<T>) -> Void, ?thisArg:Dynamic):Void;
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
};