package js.lib;

typedef RegExpMatchArray = {
	@:optional
	var index : Float;
	@:optional
	var input : String;
	@:optional
	var groups : { };
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
	function pop():Null<String>;
	/**
		Appends new elements to an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<String>):Float;
	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<ts.AnyOf2<String, ConcatArray<String>>>):Array<String> { })
	function concat(items:haxe.extern.Rest<ConcatArray<String>>):Array<String>;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():Array<String>;
	/**
		Removes the first element from an array and returns it.
	**/
	function shift():Null<String>;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):Array<String>;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:String, b:String) -> Float):RegExpMatchArray;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<String>):Array<String> { })
	function splice(start:Float, ?deleteCount:Float):Array<String>;
	/**
		Inserts new elements at the start of an array.
	**/
	function unshift(items:haxe.extern.Rest<String>):Float;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:String, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array.
	**/
	function lastIndexOf(searchElement:String, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:String, index:Float, array:Array<String>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:String, index:Float, array:Array<String>) -> Any, ?thisArg:Dynamic):Bool;
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
		
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(callbackfn:(value:String, index:Float, array:Array<String>) -> Any, ?thisArg:Dynamic):Array<String> { })
	function filter<S>(callbackfn:(value:String, index:Float, array:Array<String>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:String, currentValue:String, currentIndex:Float, array:Array<String>) -> String, initialValue:String):String { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:String, currentIndex:Float, array:Array<String>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:String, currentValue:String, currentIndex:Float, array:Array<String>) -> String):String;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
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
	function find<S>(predicate:(value:String, index:Float, obj:Array<String>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:String, index:Float, obj:Array<String>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
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
	function entries():IterableIterator<ts.Tuple2<Float, String>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():IterableIterator<String>;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(searchElement:String, ?fromIndex:Float):Bool;
};