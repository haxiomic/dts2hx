package js.lib;

typedef Int8ArrayConstructor = {
	@:overload(function(array:ArrayLike<Float>):Int8Array_<js.lib.ArrayBuffer> { })
	@:overload(function<TArrayBuffer:(ArrayBufferLike)>(buffer:TArrayBuffer, ?byteOffset:Float, ?length:Float):Int8Array_<TArrayBuffer> { })
	@:overload(function(buffer:js.lib.ArrayBuffer, ?byteOffset:Float, ?length:Float):Int8Array_<js.lib.ArrayBuffer> { })
	@:overload(function(array:ts.AnyOf2<js.lib.ArrayBuffer, ArrayLike<Float>>):Int8Array_<js.lib.ArrayBuffer> { })
	@:overload(function(elements:Iterable<Float, Dynamic, Dynamic>):Int8Array_<js.lib.ArrayBuffer> { })
	@:overload(function():Int8Array_<js.lib.ArrayBuffer> { })
	function new(length:Float);
	final prototype : Int8Array_<ArrayBufferLike>;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		Returns a new array from a set of elements.
	**/
	function of(items:haxe.extern.Rest<Float>):Int8Array_<js.lib.ArrayBuffer>;
	/**
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<T>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> Float, ?thisArg:Dynamic):Int8Array_<js.lib.ArrayBuffer> { })
	@:overload(function(elements:Iterable<Float, Dynamic, Dynamic>):Int8Array_<js.lib.ArrayBuffer> { })
	@:overload(function<T>(elements:Iterable<T, Dynamic, Dynamic>, ?mapfn:(v:T, k:Float) -> Float, ?thisArg:Dynamic):Int8Array_<js.lib.ArrayBuffer> { })
	function from(arrayLike:ArrayLike<Float>):Int8Array_<js.lib.ArrayBuffer>;
};