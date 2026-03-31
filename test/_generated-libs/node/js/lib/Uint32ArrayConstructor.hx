package js.lib;

typedef Uint32ArrayConstructor = {
	@:overload(function(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer, ArrayLike<Float>>):js.lib.Uint32Array { })
	@:overload(function(buffer:ArrayBufferLike, ?byteOffset:Float, ?length:Float):js.lib.Uint32Array { })
	@:overload(function(elements:Iterable<Float>):js.lib.Uint32Array { })
	@:overload(function():js.lib.Uint32Array { })
	function new(length:Float);
	final prototype : js.lib.Uint32Array;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		Returns a new array from a set of elements.
	**/
	function of(items:haxe.extern.Rest<Float>):js.lib.Uint32Array;
	/**
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<T>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> Float, ?thisArg:Dynamic):js.lib.Uint32Array { })
	@:overload(function(arrayLike:Iterable<Float>, ?mapfn:(v:Float, k:Float) -> Float, ?thisArg:Dynamic):js.lib.Uint32Array { })
	function from(arrayLike:ArrayLike<Float>):js.lib.Uint32Array;
};