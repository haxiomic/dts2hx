package js.lib;

typedef BigUint64ArrayConstructor = {
	final prototype : BigUint64Array<ArrayBufferLike>;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		Returns a new array from a set of elements.
	**/
	function of(items:haxe.extern.Rest<ts.BigInt>):BigUint64Array<js.lib.ArrayBuffer>;
	/**
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<U>(arrayLike:ArrayLike<U>, mapfn:(v:U, k:Float) -> ts.BigInt, ?thisArg:Dynamic):BigUint64Array<js.lib.ArrayBuffer> { })
	@:overload(function(elements:Iterable<ts.BigInt>):BigUint64Array<js.lib.ArrayBuffer> { })
	@:overload(function<T>(elements:Iterable<T>, ?mapfn:(v:T, k:Float) -> ts.BigInt, ?thisArg:Dynamic):BigUint64Array<js.lib.ArrayBuffer> { })
	function from(arrayLike:ArrayLike<ts.BigInt>):BigUint64Array<js.lib.ArrayBuffer>;
};