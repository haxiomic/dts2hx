package js.lib;

/**
	A typed array of 64-bit unsigned integer values. The contents are initialized to 0. If the
	requested number of bytes could not be allocated, an exception is raised.
**/
typedef IBigUint64Array<TArrayBuffer:(ArrayBufferLike)> = {
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		The ArrayBuffer instance referenced by the array.
	**/
	final buffer : TArrayBuffer;
	/**
		The length in bytes of the array.
	**/
	final byteLength : Float;
	/**
		The offset in bytes of the array.
	**/
	final byteOffset : Float;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):BigUint64Array<TArrayBuffer>;
	/**
		Yields index, value pairs for every entry in the array.
	**/
	function entries():ArrayIterator<ts.Tuple2<Float, ts.BigInt>>;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(predicate:(value:ts.BigInt, index:Float, array:BigUint64Array<TArrayBuffer>) -> Bool, ?thisArg:Dynamic):Bool;
	/**
		Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
	**/
	function fill(value:ts.BigInt, ?start:Float, ?end:Float):BigUint64Array<TArrayBuffer>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	function filter(predicate:(value:ts.BigInt, index:Float, array:BigUint64Array<TArrayBuffer>) -> Dynamic, ?thisArg:Dynamic):BigUint64Array<js.lib.ArrayBuffer>;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	function find(predicate:(value:ts.BigInt, index:Float, array:BigUint64Array<TArrayBuffer>) -> Bool, ?thisArg:Dynamic):Null<ts.BigInt>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:ts.BigInt, index:Float, array:BigUint64Array<TArrayBuffer>) -> Bool, ?thisArg:Dynamic):Float;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:ts.BigInt, index:Float, array:BigUint64Array<TArrayBuffer>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(searchElement:ts.BigInt, ?fromIndex:Float):Bool;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:ts.BigInt, ?fromIndex:Float):Float;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Yields each index in the array.
	**/
	function keys():ArrayIterator<Float>;
	/**
		Returns the index of the last occurrence of a value in an array.
	**/
	function lastIndexOf(searchElement:ts.BigInt, ?fromIndex:Float):Float;
	/**
		The length of the array.
	**/
	final length : Float;
	/**
		Calls a defined callback function on each element of an array, and returns an array that
		contains the results.
	**/
	function map(callbackfn:(value:ts.BigInt, index:Float, array:BigUint64Array<TArrayBuffer>) -> ts.BigInt, ?thisArg:Dynamic):BigUint64Array<js.lib.ArrayBuffer>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of
		the callback function is the accumulated result, and is provided as an argument in the next
		call to the callback function.
	**/
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:ts.BigInt, currentIndex:Float, array:BigUint64Array<TArrayBuffer>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:ts.BigInt, currentValue:ts.BigInt, currentIndex:Float, array:BigUint64Array<TArrayBuffer>) -> ts.BigInt):ts.BigInt;
	/**
		Calls the specified callback function for all the elements in an array, in descending order.
		The return value of the callback function is the accumulated result, and is provided as an
		argument in the next call to the callback function.
	**/
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:ts.BigInt, currentIndex:Float, array:BigUint64Array<TArrayBuffer>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:ts.BigInt, currentValue:ts.BigInt, currentIndex:Float, array:BigUint64Array<TArrayBuffer>) -> ts.BigInt):ts.BigInt;
	/**
		Reverses the elements in the array.
	**/
	function reverse():BigUint64Array<TArrayBuffer>;
	/**
		Sets a value or an array of values.
	**/
	function set(array:ArrayLike<ts.BigInt>, ?offset:Float):Void;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):BigUint64Array<js.lib.ArrayBuffer>;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(predicate:(value:ts.BigInt, index:Float, array:BigUint64Array<TArrayBuffer>) -> Bool, ?thisArg:Dynamic):Bool;
	/**
		Sorts the array.
	**/
	function sort(?compareFn:(a:ts.BigInt, b:ts.BigInt) -> ts.AnyOf2<Float, ts.BigInt>):BigUint64Array<TArrayBuffer>;
	/**
		Gets a new BigUint64Array view of the ArrayBuffer store for this array, referencing the elements
		at begin, inclusive, up to end, exclusive.
	**/
	function subarray(?begin:Float, ?end:Float):BigUint64Array<TArrayBuffer>;
	/**
		Converts the array to a string by using the current locale.
	**/
	function toLocaleString(?locales:ts.AnyOf2<String, Array<String>>, ?options:js.lib.intl.NumberFormat.NumberFormatOptions):String;
	/**
		Returns a string representation of the array.
	**/
	function toString():String;
	/**
		Returns the primitive value of the specified object.
	**/
	function valueOf():BigUint64Array<TArrayBuffer>;
	/**
		Yields each value in the array.
	**/
	function values():ArrayIterator<ts.BigInt>;
	function at(index:Float):Null<ts.BigInt>;
};