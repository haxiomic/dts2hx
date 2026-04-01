package js.lib;

typedef RegExpMatchArray = {
	/**
		The index of the search at which the result was found.
	**/
	@:optional
	var index : Float;
	/**
		A copy of the search string.
	**/
	@:optional
	var input : String;
	/**
		The first match. This will always be present because `null` will be returned if there are no matches.
	**/
	@:native("0")
	var Zero : String;
	@:optional
	var groups : haxe.DynamicAccess<String>;
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
	function pop():Null<String>;
	/**
		Appends new elements to the end of an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<String>):Float;
	/**
		Combines two or more arrays.
		This method returns a new array without modifying any existing arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<ts.AnyOf2<String, ConcatArray<String>>>):Array<String> { })
	function concat(items:haxe.extern.Rest<ConcatArray<String>>):Array<String>;
	/**
		Adds all the elements of an array into a string, separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an array in place.
		This method mutates the array and returns a reference to the same array.
	**/
	function reverse():Array<String>;
	/**
		Removes the first element from an array and returns it.
		If the array is empty, undefined is returned and the array is not modified.
	**/
	function shift():Null<String>;
	/**
		Returns a copy of a section of an array.
		For both start and end, a negative index can be used to indicate an offset from the end of the array.
		For example, -2 refers to the second to last element of the array.
	**/
	function slice(?start:Float, ?end:Float):Array<String>;
	/**
		Sorts an array in place.
		This method mutates the array and returns a reference to the same array.
	**/
	function sort(?compareFn:(a:String, b:String) -> Float):RegExpMatchArray;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<String>):Array<String> { })
	function splice(start:Float, ?deleteCount:Float):Array<String>;
	/**
		Inserts new elements at the start of an array, and returns the new length of the array.
	**/
	function unshift(items:haxe.extern.Rest<String>):Float;
	/**
		Returns the index of the first occurrence of a value in an array, or -1 if it is not present.
	**/
	function indexOf(searchElement:String, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array, or -1 if it is not present.
	**/
	function lastIndexOf(searchElement:String, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	@:overload(function(predicate:(value:String, index:Float, array:Array<String>) -> Any, ?thisArg:Dynamic):Bool { })
	function every<S:(T)>(predicate:(value:String, index:Float, array:Array<String>) -> Bool, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(predicate:(value:String, index:Float, array:Array<String>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:String, index:Float, array:Array<String>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:String, index:Float, array:Array<String>) -> U, ?thisArg:Dynamic):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(predicate:(value:String, index:Float, array:Array<String>) -> Any, ?thisArg:Dynamic):Array<String> { })
	function filter<S:(T)>(predicate:(value:String, index:Float, array:Array<String>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:String, currentValue:String, currentIndex:Float, array:Array<String>) -> String, initialValue:String):String { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:String, currentIndex:Float, array:Array<String>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:String, currentValue:String, currentIndex:Float, array:Array<String>) -> String):String;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:String, currentValue:String, currentIndex:Float, array:Array<String>) -> String, initialValue:String):String { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:String, currentIndex:Float, array:Array<String>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:String, currentValue:String, currentIndex:Float, array:Array<String>) -> String):String;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:String, index:Float, obj:Array<String>) -> Any, ?thisArg:Dynamic):Null<String> { })
	function find<S:(T)>(predicate:(value:String, index:Float, obj:Array<String>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:String, index:Float, obj:Array<String>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
	**/
	function fill(value:String, ?start:Float, ?end:Float):RegExpMatchArray;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):RegExpMatchArray;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():ArrayIterator<ts.Tuple2<Float, String>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():ArrayIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():ArrayIterator<String>;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(searchElement:String, ?fromIndex:Float):Bool;
};