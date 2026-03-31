package js.lib;

typedef Float64ArrayConstructor = {
	@:overload(function(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer, ArrayLike<Float>>):js.lib.Float64Array { })
	@:overload(function(buffer:ts.AnyOf2<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer>, ?byteOffset:Float, ?length:Float):js.lib.Float64Array { })
	@:overload(function(elements:Iterable<Float>):js.lib.Float64Array { })
	@:overload(function():js.lib.Float64Array { })
	function new(length:Float);
	final prototype : js.lib.Float64Array;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		Returns a new array from a set of elements.
	**/
	function of(items:haxe.extern.Rest<Float>):js.lib.Float64Array;
	/**
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<T>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> Float, ?thisArg:Dynamic):js.lib.Float64Array { })
	@:overload(function(arrayLike:Iterable<Float>, ?mapfn:(v:Float, k:Float) -> Float, ?thisArg:Dynamic):js.lib.Float64Array { })
	function from(arrayLike:ArrayLike<Float>):js.lib.Float64Array;
};