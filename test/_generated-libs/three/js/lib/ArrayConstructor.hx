package js.lib;
extern typedef ArrayConstructor = { @:overload(function<T>(arrayLength:Float):std.Array<T> { })
	@:overload(function<T>(items:std.Array<T>):std.Array<T> { })
	@:selfCall
	function call(?arrayLength:Float):std.Array<Any>; function isArray(arg:Any):Bool; final prototype : std.Array<Any>; /**
		Creates an array from an array-like object.
		
		
		
		Creates an array from an iterable object.
		
		
		
		Creates an array from an iterable object.
		
		
		
		Creates an array from an iterable object.
	**/
	@:overload(function<T, U>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> U, ?thisArg:Any):std.Array<U> { })
	@:overload(function<T>(iterable:haxe.extern.EitherType<Iterable<T>, ArrayLike<T>>):std.Array<T> { })
	@:overload(function<T, U>(iterable:haxe.extern.EitherType<Iterable<T>, ArrayLike<T>>, mapfn:(v:T, k:Float) -> U, ?thisArg:Any):std.Array<U> { })
	function from<T>(arrayLike:ArrayLike<T>):std.Array<T>; /**
		Returns a new array from a set of elements.
	**/
	function of<T>(items:std.Array<T>):std.Array<T>; };