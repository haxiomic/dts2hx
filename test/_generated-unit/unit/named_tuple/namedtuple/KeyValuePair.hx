package unit.named_tuple.namedtuple;
typedef KeyValuePair<K, V> = {
	@:native("0")
	var Zero : K;
	@:native("1")
	var One : V;
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
	function pop():Null<ts.AnyOf2<K, V>>;
	/**
		Appends new elements to an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<ts.AnyOf2<K, V>>):Float;
	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<ts.AnyOf3<K, V, ts.lib.ConcatArray<ts.AnyOf2<K, V>>>>):std.Array<ts.AnyOf2<K, V>> { })
	function concat(items:haxe.extern.Rest<ts.lib.ConcatArray<ts.AnyOf2<K, V>>>):std.Array<ts.AnyOf2<K, V>>;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():std.Array<ts.AnyOf2<K, V>>;
	/**
		Removes the first element from an array and returns it.
	**/
	function shift():Null<ts.AnyOf2<K, V>>;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):std.Array<ts.AnyOf2<K, V>>;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:ts.AnyOf2<K, V>, b:ts.AnyOf2<K, V>) -> Float):KeyValuePair<K, V>;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<ts.AnyOf2<K, V>>):std.Array<ts.AnyOf2<K, V>> { })
	function splice(start:Float, ?deleteCount:Float):std.Array<ts.AnyOf2<K, V>>;
	/**
		Inserts new elements at the start of an array.
	**/
	function unshift(items:haxe.extern.Rest<ts.AnyOf2<K, V>>):Float;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:ts.AnyOf2<K, V>, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array.
	**/
	function lastIndexOf(searchElement:ts.AnyOf2<K, V>, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:ts.AnyOf2<K, V>, index:Float, array:std.Array<ts.AnyOf2<K, V>>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:ts.AnyOf2<K, V>, index:Float, array:std.Array<ts.AnyOf2<K, V>>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:ts.AnyOf2<K, V>, index:Float, array:std.Array<ts.AnyOf2<K, V>>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:ts.AnyOf2<K, V>, index:Float, array:std.Array<ts.AnyOf2<K, V>>) -> U, ?thisArg:Dynamic):std.Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
		
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(callbackfn:(value:ts.AnyOf2<K, V>, index:Float, array:std.Array<ts.AnyOf2<K, V>>) -> Any, ?thisArg:Dynamic):std.Array<ts.AnyOf2<K, V>> { })
	function filter<S>(callbackfn:(value:ts.AnyOf2<K, V>, index:Float, array:std.Array<ts.AnyOf2<K, V>>) -> Bool, ?thisArg:Dynamic):std.Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:ts.AnyOf2<K, V>, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:std.Array<ts.AnyOf2<K, V>>) -> ts.AnyOf2<K, V>, initialValue:ts.AnyOf2<K, V>):ts.AnyOf2<K, V> { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:std.Array<ts.AnyOf2<K, V>>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:ts.AnyOf2<K, V>, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:std.Array<ts.AnyOf2<K, V>>) -> ts.AnyOf2<K, V>):ts.AnyOf2<K, V>;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:ts.AnyOf2<K, V>, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:std.Array<ts.AnyOf2<K, V>>) -> ts.AnyOf2<K, V>, initialValue:ts.AnyOf2<K, V>):ts.AnyOf2<K, V> { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:std.Array<ts.AnyOf2<K, V>>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:ts.AnyOf2<K, V>, currentValue:ts.AnyOf2<K, V>, currentIndex:Float, array:std.Array<ts.AnyOf2<K, V>>) -> ts.AnyOf2<K, V>):ts.AnyOf2<K, V>;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:ts.AnyOf2<K, V>, index:Float, obj:std.Array<ts.AnyOf2<K, V>>) -> Any, ?thisArg:Dynamic):Null<ts.AnyOf2<K, V>> { })
	function find<S>(predicate:(value:ts.AnyOf2<K, V>, index:Float, obj:std.Array<ts.AnyOf2<K, V>>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:ts.AnyOf2<K, V>, index:Float, obj:std.Array<ts.AnyOf2<K, V>>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
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
	function entries():ts.lib.IterableIterator<ts.Tuple2<Float, ts.AnyOf2<K, V>>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():ts.lib.IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():ts.lib.IterableIterator<ts.AnyOf2<K, V>>;
};