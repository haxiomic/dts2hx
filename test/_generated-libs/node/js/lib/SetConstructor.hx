package js.lib;

typedef SetConstructor = {
	@:overload(function<T>(?iterable:Iterable<T>):js.lib.Set<T> { })
	function new<T>(?values:haxe.ds.ReadOnlyArray<T>);
	final prototype : js.lib.Set<Dynamic>;
};