package js.lib;
extern interface RegExpExecArray {
	var index : Float;
	var input : String;
	/**
		Gets or sets the length of the array. This is a number one higher than the highest element defined in an array.
	**/
	var length : Float;
	/**
		Returns a string representation of an array.
	**/
	function toString():String;
	/**
		Returns a string representation of an array. The elements are converted to string using their toLocalString methods.
	**/
	function toLocaleString():String;
	/**
		Removes the last element from an array and returns it.
	**/
	function pop():Null<T>;
	/**
		Appends new elements to an array, and returns the new length of the array.
	**/
	function push(items:Array<T>):Float;
	/**
		Combines two or more arrays.
		
		
		
		Combines two or more arrays.
	**/
	@:overload(function(items:Array<haxe.extern.EitherType<T, ConcatArray<T>>>):Array<T> { })
	function concat(items:Array<ConcatArray<T>>):Array<T>;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():Array<T>;
	/**
		Removes the first element from an array and returns it.
	**/
	function shift():Null<T>;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):Array<T>;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:T, b:T) -> Float):Array;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:Array<T>):Array<T> { })
	function splice(start:Float, ?deleteCount:Float):Array<T>;
	/**
		Inserts new elements at the start of an array.
	**/
	function unshift(items:Array<T>):Float;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:T, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array.
	**/
	function lastIndexOf(searchElement:T, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:T, index:Float, array:Array<T>) -> Any, ?thisArg:Any):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:T, index:Float, array:Array<T>) -> Any, ?thisArg:Any):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:T, index:Float, array:Array<T>) -> Void, ?thisArg:Any):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:T, index:Float, array:Array<T>) -> U, ?thisArg:Any):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
		
		
		
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(callbackfn:(value:T, index:Float, array:Array<T>) -> Any, ?thisArg:Any):Array<T> { })
	function filter<S:(T)>(callbackfn:(value:T, index:Float, array:Array<T>) -> Bool, ?thisArg:Any):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:T, currentValue:T, currentIndex:Float, array:Array<T>) -> T, initialValue:T):T { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:T, currentIndex:Float, array:Array<T>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:T, currentValue:T, currentIndex:Float, array:Array<T>) -> T):T;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:T, currentValue:T, currentIndex:Float, array:Array<T>) -> T, initialValue:T):T { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:T, currentIndex:Float, array:Array<T>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:T, currentValue:T, currentIndex:Float, array:Array<T>) -> T):T;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:T, index:Float, obj:Array<T>) -> Any, ?thisArg:Any):Null<T> { })
	function find<S:(T)>(predicate:(value:T, index:Float, obj:Array<T>) -> Bool, ?thisArg:Any):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:T, index:Float, obj:Array<T>) -> Any, ?thisArg:Any):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:T, ?start:Float, ?end:Float):Array;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):Array;
	/**
		Iterator
	**/
	@:native("__@iterator")
	function __AtIterator():IterableIterator<T>;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():IterableIterator<js.lib.Tuple2<Any, Float, T>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():IterableIterator<T>;
	/**
		Returns an object whose properties have the value 'true'
		when they will be absent when used in a 'with' statement.
	**/
	@:native("__@unscopables")
	function __AtUnscopables():{ var copyWithin : Bool; var entries : Bool; var fill : Bool; var find : Bool; var findIndex : Bool; var keys : Bool; var values : Bool; };
}