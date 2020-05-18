package js.lib;

typedef ArrayConstructor = {
	@:overload(function<T>(arrayLength:Float):Array<T> { })
	@:overload(function<T>(items:haxe.extern.Rest<T>):Array<T> { })
	@:selfCall
	function call(?arrayLength:Float):Array<Dynamic>;
	function isArray(arg:Dynamic):Bool;
	final prototype : Array<Dynamic>;
	/**
		Creates an array from an array-like object.
		
		Creates an array from an iterable object.
		
		Creates an array from an iterable object.
		
		Creates an array from an iterable object.
	**/
	@:overload(function<T, U>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> U, ?thisArg:Dynamic):Array<U> { })
	@:overload(function<T>(iterable:ts.AnyOf2<Iterable<T>, ArrayLike<T>>):Array<T> { })
	@:overload(function<T, U>(iterable:ts.AnyOf2<Iterable<T>, ArrayLike<T>>, mapfn:(v:T, k:Float) -> U, ?thisArg:Dynamic):Array<U> { })
	function from<T>(arrayLike:ArrayLike<T>):Array<T>;
	/**
		Returns a new array from a set of elements.
	**/
	function of<T>(items:haxe.extern.Rest<T>):Array<T>;
};