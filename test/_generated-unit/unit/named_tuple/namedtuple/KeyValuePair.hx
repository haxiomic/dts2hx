package unit.named_tuple.namedtuple;

typedef KeyValuePair<K, V> = {
	@:native("0")
	var Zero : K;
	@:native("1")
	var One : V;
	/**
		Gets or sets the length of the array. This is a number one higher than the highest index in the array.
	**/
	var length : Float;
	/**
		Returns a string representation of an array.
	**/
	function toString():String;
	/**
		Returns a string representation of an array. The elements are converted to string using their toLocaleString methods.
	**/
	@:overload(function(locales:ts.AnyOf2<String, Array<String>>, ?options:Dynamic):String { })
	function toLocaleString():String;
	/**
		Removes the last element from an array and returns it.
		If the array is empty, undefined is returned and the array is not modified.
	**/
	function pop():Null<ts.AnyOf2<K, V>>;
	/**
		Appends new elements to the end of an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<ts.AnyOf2<K, V>>):Float;
	/**
		Combines two or more arrays.
		This method returns a new array without modifying any existing arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<ts.AnyOf3<K, V, js.lib.ConcatArray<ts.AnyOf2<K, V>>>>):Array<ts.AnyOf2<K, V>> { })
	function concat(items:haxe.extern.Rest<js.lib.ConcatArray<ts.AnyOf2<K, V>>>):Array<ts.AnyOf2<K, V>>;
	/**
		Adds all the elements of an array into a string, separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an array in place.
		This method mutates the array and returns a reference to the same array.
	**/
	function reverse():Array<ts.AnyOf2<K, V>>;
	/**
		Removes the first element from an array and returns it.
		If the array is empty, undefined is returned and the array is not modified.
	**/
	function shift():Null<ts.AnyOf2<K, V>>;
	/**
		Returns a copy of a section of an array.
		For both start and end, a negative index can be used to indicate an offset from the end of the array.
		For example, -2 refers to the second to last element of the array.
	**/
	function slice(?start:Float, ?end:Float):Array<ts.AnyOf2<K, V>>;
	/**
		Sorts an array in place.
		This method mutates the array and returns a reference to the same array.
	**/
	function sort(?compareFn:(a:ts.AnyOf2<K, V>, b:ts.AnyOf2<K, V>) -> Float):KeyValuePair<K, V>;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<ts.AnyOf2<K, V>>):Array<ts.AnyOf2<K, V>> { })
	function splice(start:Float, ?deleteCount:Float):Array<ts.AnyOf2<K, V>>;
	/**
		Inserts new elements at the start of an array, and returns the new length of the array.
	**/
	function unshift(items:haxe.extern.Rest<ts.AnyOf2<K, V>>):Float;
	/**
		Returns the index of the first occurrence of a value in an array, or -1 if it is not present.
	**/
	function indexOf(searchElement:ts.AnyOf2<K, V>, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array, or -1 if it is not present.
	**/
	function lastIndexOf(searchElement:ts.AnyOf2<K, V>, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	@:overload(function(predicate:(value:ts.AnyOf2<K, V>, index:Float, array:Array<ts.AnyOf2<K, V>>) -> Any, ?thisArg:Dynamic):Bool { })
	function every<S:(T)>(predicate:(value:ts.AnyOf2<K, V>, index:Float, array:Array<ts.AnyOf2<K, V>>) -> Bool, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(predicate:(value:ts.AnyOf2<K, V>, index:Float, array:Array<ts.AnyOf2<K, V>>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:ts.AnyOf2<K, V>, index:Float, array:Array<ts.AnyOf2<K, V>>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:ts.AnyOf2<K, V>, index:Float, array:Array<ts.AnyOf2<K, V>>) -> U, ?thisArg:Dynamic):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(predicate:(value:ts.AnyOf2<K, V>, index:Float, array:Array<ts.AnyOf2<K, V>>) -> Any, ?thisArg:Dynamic):Array<ts.AnyOf2<K, V>> { })
	function filter<S:(T)>(predicate:(value:ts.AnyOf2<K, V>, index:Float, array:Array<ts.AnyOf2<K, V>>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:ts.AnyOf2<K, V>, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:Array<ts.AnyOf2<K, V>>) -> ts.AnyOf2<K, V>, initialValue:ts.AnyOf2<K, V>):ts.AnyOf2<K, V> { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:Array<ts.AnyOf2<K, V>>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:ts.AnyOf2<K, V>, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:Array<ts.AnyOf2<K, V>>) -> ts.AnyOf2<K, V>):ts.AnyOf2<K, V>;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:ts.AnyOf2<K, V>, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:Array<ts.AnyOf2<K, V>>) -> ts.AnyOf2<K, V>, initialValue:ts.AnyOf2<K, V>):ts.AnyOf2<K, V> { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:Array<ts.AnyOf2<K, V>>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:ts.AnyOf2<K, V>, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:Array<ts.AnyOf2<K, V>>) -> ts.AnyOf2<K, V>):ts.AnyOf2<K, V>;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:ts.AnyOf2<K, V>, index:Float, obj:Array<ts.AnyOf2<K, V>>) -> Any, ?thisArg:Dynamic):Null<ts.AnyOf2<K, V>> { })
	function find<S:(T)>(predicate:(value:ts.AnyOf2<K, V>, index:Float, obj:Array<ts.AnyOf2<K, V>>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:ts.AnyOf2<K, V>, index:Float, obj:Array<ts.AnyOf2<K, V>>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
	**/
	function fill(value:ts.AnyOf2<K, V>, ?start:Float, ?end:Float):KeyValuePair<K, V>;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):KeyValuePair<K, V>;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():js.lib.IterableIterator<ts.Tuple2<Float, ts.AnyOf2<K, V>>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():js.lib.IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():js.lib.IterableIterator<ts.AnyOf2<K, V>>;
};