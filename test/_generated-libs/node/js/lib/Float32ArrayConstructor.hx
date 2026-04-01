package js.lib;

typedef Float32ArrayConstructor = {
	@:overload(function(array:ArrayLike<Float>):Float32Array_<js.lib.ArrayBuffer> { })
	@:overload(function<TArrayBuffer:(ArrayBufferLike)>(buffer:TArrayBuffer, ?byteOffset:Float, ?length:Float):Float32Array_<TArrayBuffer> { })
	@:overload(function(buffer:js.lib.ArrayBuffer, ?byteOffset:Float, ?length:Float):Float32Array_<js.lib.ArrayBuffer> { })
	@:overload(function(array:ts.AnyOf2<js.lib.ArrayBuffer, ArrayLike<Float>>):Float32Array_<js.lib.ArrayBuffer> { })
	@:overload(function(elements:Iterable<Float, Dynamic, Dynamic>):Float32Array_<js.lib.ArrayBuffer> { })
	@:overload(function():Float32Array_<js.lib.ArrayBuffer> { })
	function new(length:Float);
	final prototype : Float32Array_<ArrayBufferLike>;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		Returns a new array from a set of elements.
	**/
	function of(items:haxe.extern.Rest<Float>):Float32Array_<js.lib.ArrayBuffer>;
	/**
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<T>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> Float, ?thisArg:Dynamic):Float32Array_<js.lib.ArrayBuffer> { })
	@:overload(function(elements:Iterable<Float, Dynamic, Dynamic>):Float32Array_<js.lib.ArrayBuffer> { })
	@:overload(function<T>(elements:Iterable<T, Dynamic, Dynamic>, ?mapfn:(v:T, k:Float) -> Float, ?thisArg:Dynamic):Float32Array_<js.lib.ArrayBuffer> { })
	function from(arrayLike:ArrayLike<Float>):Float32Array_<js.lib.ArrayBuffer>;
};