package ts.lib;
/**
	A typed array of 32-bit signed integer values. The contents are initialized to 0. If the
	requested number of bytes could not be allocated an exception is raised.
**/
@:native("Int32Array") extern class Int32Array {
	@:overload(function(arrayOrArrayBuffer:ts.AnyOf2<IArrayBuffer, ArrayLike<Float>>):IInt32Array { })
	@:overload(function(buffer:IArrayBuffer, byteOffset:Float, ?length:Float):IInt32Array { })
	@:overload(function(elements:Iterable<Float>):IInt32Array { })
	function new(length:Float);
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		The ArrayBuffer instance referenced by the array.
	**/
	final buffer : IArrayBuffer;
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
	function copyWithin(target:Float, start:Float, ?end:Float):IInt32Array;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:Float, index:Float, array:IInt32Array) -> Any, ?thisArg:Any):Bool;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:Float, ?start:Float, ?end:Float):IInt32Array;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	function filter(callbackfn:(value:Float, index:Float, array:IInt32Array) -> Any, ?thisArg:Any):IInt32Array;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	function find(predicate:(value:Float, index:Float, obj:IInt32Array) -> Bool, ?thisArg:Any):Null<Float>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:Float, index:Float, obj:IInt32Array) -> Bool, ?thisArg:Any):Float;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:Float, index:Float, array:IInt32Array) -> Void, ?thisArg:Any):Void;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:Float, ?fromIndex:Float):Float;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Returns the index of the last occurrence of a value in an array.
	**/
	function lastIndexOf(searchElement:Float, ?fromIndex:Float):Float;
	/**
		The length of the array.
	**/
	final length : Float;
	/**
		Calls a defined callback function on each element of an array, and returns an array that
		contains the results.
	**/
	function map(callbackfn:(value:Float, index:Float, array:IInt32Array) -> Float, ?thisArg:Any):IInt32Array;
	/**
		Calls the specified callback function for all the elements in an array. The return value of
		the callback function is the accumulated result, and is provided as an argument in the next
		call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of
		the callback function is the accumulated result, and is provided as an argument in the next
		call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:IInt32Array) -> Float, initialValue:Float):Float { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Float, currentIndex:Float, array:IInt32Array) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:IInt32Array) -> Float):Float;
	/**
		Calls the specified callback function for all the elements in an array, in descending order.
		The return value of the callback function is the accumulated result, and is provided as an
		argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order.
		The return value of the callback function is the accumulated result, and is provided as an
		argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:IInt32Array) -> Float, initialValue:Float):Float { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Float, currentIndex:Float, array:IInt32Array) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:IInt32Array) -> Float):Float;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():IInt32Array;
	/**
		Sets a value or an array of values.
	**/
	function set(array:ArrayLike<Float>, ?offset:Float):Void;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):IInt32Array;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:Float, index:Float, array:IInt32Array) -> Any, ?thisArg:Any):Bool;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:Float, b:Float) -> Float):IInt32Array;
	/**
		Gets a new Int32Array view of the ArrayBuffer store for this array, referencing the elements
		at begin, inclusive, up to end, exclusive.
	**/
	function subarray(?begin:Float, ?end:Float):IInt32Array;
	/**
		Converts a number to a string by using the current locale.
	**/
	function toLocaleString():String;
	/**
		Returns a string representation of an array.
	**/
	function toString():String;
	/**
		Returns an array of key, value pairs for every entry in the array
	**/
	function entries():IterableIterator<ts.Tuple2<Float, Float>>;
	/**
		Returns an list of keys in the array
	**/
	function keys():IterableIterator<Float>;
	/**
		Returns an list of values in the array
	**/
	function values():IterableIterator<Float>;
	static final prototype : IInt32Array;
	/**
		The size in bytes of each element in the array.
	**/
	@:native("BYTES_PER_ELEMENT")
	static final BYTES_PER_ELEMENT_ : Float;
	/**
		Returns a new array from a set of elements.
	**/
	static function of(items:haxe.extern.Rest<Float>):IInt32Array;
	/**
		Creates an array from an array-like or iterable object.
		
		Creates an array from an array-like or iterable object.
		
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<T>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> Float, ?thisArg:Any):IInt32Array { })
	@:overload(function(arrayLike:Iterable<Float>, ?mapfn:(v:Float, k:Float) -> Float, ?thisArg:Any):IInt32Array { })
	static function from(arrayLike:ArrayLike<Float>):IInt32Array;
}