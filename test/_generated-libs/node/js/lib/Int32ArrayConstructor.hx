package js.lib;

typedef Int32ArrayConstructor = {
	final prototype : Int32Array_<ArrayBufferLike>;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		Returns a new array from a set of elements.
	**/
	function of(items:haxe.extern.Rest<Float>):Int32Array_<js.lib.ArrayBuffer>;
	/**
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<T>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> Float, ?thisArg:Dynamic):Int32Array_<js.lib.ArrayBuffer> { })
	@:overload(function(elements:Iterable<Float>):Int32Array_<js.lib.ArrayBuffer> { })
	@:overload(function<T>(elements:Iterable<T>, ?mapfn:(v:T, k:Float) -> Float, ?thisArg:Dynamic):Int32Array_<js.lib.ArrayBuffer> { })
	function from(arrayLike:ArrayLike<Float>):Int32Array_<js.lib.ArrayBuffer>;
};