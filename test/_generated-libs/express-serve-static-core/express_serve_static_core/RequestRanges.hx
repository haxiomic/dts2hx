package express_serve_static_core;

typedef RequestRanges = {
	var type : String;
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
	function pop():Null<range_parser.Range>;
	/**
		Appends new elements to an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<range_parser.Range>):Float;
	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<ts.AnyOf2<range_parser.Range, js.lib.ConcatArray<range_parser.Range>>>):Array<range_parser.Range> { })
	function concat(items:haxe.extern.Rest<js.lib.ConcatArray<range_parser.Range>>):Array<range_parser.Range>;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():Array<range_parser.Range>;
	/**
		Removes the first element from an array and returns it.
	**/
	function shift():Null<range_parser.Range>;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):Array<range_parser.Range>;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:range_parser.Range, b:range_parser.Range) -> Float):RequestRanges;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<range_parser.Range>):Array<range_parser.Range> { })
	function splice(start:Float, ?deleteCount:Float):Array<range_parser.Range>;
	/**
		Inserts new elements at the start of an array.
	**/
	function unshift(items:haxe.extern.Rest<range_parser.Range>):Float;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:range_parser.Range, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array.
	**/
	function lastIndexOf(searchElement:range_parser.Range, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:range_parser.Range, index:Float, array:Array<range_parser.Range>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:range_parser.Range, index:Float, array:Array<range_parser.Range>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:range_parser.Range, index:Float, array:Array<range_parser.Range>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:range_parser.Range, index:Float, array:Array<range_parser.Range>) -> U, ?thisArg:Dynamic):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
		
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(callbackfn:(value:range_parser.Range, index:Float, array:Array<range_parser.Range>) -> Any, ?thisArg:Dynamic):Array<range_parser.Range> { })
	function filter<S>(callbackfn:(value:range_parser.Range, index:Float, array:Array<range_parser.Range>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:range_parser.Range, currentValue:range_parser.Range, currentIndex:Float, array:Array<range_parser.Range>) -> range_parser.Range, initialValue:range_parser.Range):range_parser.Range { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:range_parser.Range, currentIndex:Float, array:Array<range_parser.Range>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:range_parser.Range, currentValue:range_parser.Range, currentIndex:Float, array:Array<range_parser.Range>) -> range_parser.Range):range_parser.Range;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:range_parser.Range, currentValue:range_parser.Range, currentIndex:Float, array:Array<range_parser.Range>) -> range_parser.Range, initialValue:range_parser.Range):range_parser.Range { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:range_parser.Range, currentIndex:Float, array:Array<range_parser.Range>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:range_parser.Range, currentValue:range_parser.Range, currentIndex:Float, array:Array<range_parser.Range>) -> range_parser.Range):range_parser.Range;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:range_parser.Range, index:Float, obj:Array<range_parser.Range>) -> Any, ?thisArg:Dynamic):Null<range_parser.Range> { })
	function find<S>(predicate:(value:range_parser.Range, index:Float, obj:Array<range_parser.Range>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:range_parser.Range, index:Float, obj:Array<range_parser.Range>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:range_parser.Range, ?start:Float, ?end:Float):RequestRanges;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):RequestRanges;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():js.lib.IterableIterator<ts.Tuple2<Float, range_parser.Range>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():js.lib.IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():js.lib.IterableIterator<range_parser.Range>;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(searchElement:range_parser.Range, ?fromIndex:Float):Bool;
};