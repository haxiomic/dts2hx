package js.lib;

typedef Uint16ArrayConstructor = {
	final prototype : Uint16Array_<ArrayBufferLike>;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		Returns a new array from a set of elements.
	**/
	function of(items:haxe.extern.Rest<Float>):Uint16Array_<js.lib.ArrayBuffer>;
	/**
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<T>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> Float, ?thisArg:Dynamic):Uint16Array_<js.lib.ArrayBuffer> { })
	@:overload(function(elements:Iterable<Float>):Uint16Array_<js.lib.ArrayBuffer> { })
	@:overload(function<T>(elements:Iterable<T>, ?mapfn:(v:T, k:Float) -> Float, ?thisArg:Dynamic):Uint16Array_<js.lib.ArrayBuffer> { })
	function from(arrayLike:ArrayLike<Float>):Uint16Array_<js.lib.ArrayBuffer>;
};