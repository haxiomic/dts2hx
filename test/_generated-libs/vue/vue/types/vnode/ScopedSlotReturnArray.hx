package vue.types.vnode;

typedef ScopedSlotReturnArray = {
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
	function pop():ScopedSlotReturnValue;
	/**
		Appends new elements to the end of an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<ScopedSlotReturnValue>):Float;
	/**
		Combines two or more arrays.
		This method returns a new array without modifying any existing arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<Null<ts.AnyOf5<String, Bool, vue.VNode, ScopedSlotReturnArray, js.lib.ConcatArray<ScopedSlotReturnValue>>>>):Array<ScopedSlotReturnValue> { })
	function concat(items:haxe.extern.Rest<js.lib.ConcatArray<ScopedSlotReturnValue>>):Array<ScopedSlotReturnValue>;
	/**
		Adds all the elements of an array into a string, separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an array in place.
		This method mutates the array and returns a reference to the same array.
	**/
	function reverse():Array<ScopedSlotReturnValue>;
	/**
		Removes the first element from an array and returns it.
		If the array is empty, undefined is returned and the array is not modified.
	**/
	function shift():ScopedSlotReturnValue;
	/**
		Returns a copy of a section of an array.
		For both start and end, a negative index can be used to indicate an offset from the end of the array.
		For example, -2 refers to the second to last element of the array.
	**/
	function slice(?start:Float, ?end:Float):Array<ScopedSlotReturnValue>;
	/**
		Sorts an array in place.
		This method mutates the array and returns a reference to the same array.
	**/
	function sort(?compareFn:(a:ScopedSlotReturnValue, b:ScopedSlotReturnValue) -> Float):ScopedSlotReturnArray;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<ScopedSlotReturnValue>):Array<ScopedSlotReturnValue> { })
	function splice(start:Float, ?deleteCount:Float):Array<ScopedSlotReturnValue>;
	/**
		Inserts new elements at the start of an array, and returns the new length of the array.
	**/
	function unshift(items:haxe.extern.Rest<ScopedSlotReturnValue>):Float;
	/**
		Returns the index of the first occurrence of a value in an array, or -1 if it is not present.
	**/
	function indexOf(searchElement:ScopedSlotReturnValue, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array, or -1 if it is not present.
	**/
	function lastIndexOf(searchElement:ScopedSlotReturnValue, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	@:overload(function(predicate:(value:ScopedSlotReturnValue, index:Float, array:Array<ScopedSlotReturnValue>) -> Any, ?thisArg:Dynamic):Bool { })
	function every<S:(ScopedSlotReturnValue)>(predicate:(value:ScopedSlotReturnValue, index:Float, array:Array<ScopedSlotReturnValue>) -> Bool, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(predicate:(value:ScopedSlotReturnValue, index:Float, array:Array<ScopedSlotReturnValue>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:ScopedSlotReturnValue, index:Float, array:Array<ScopedSlotReturnValue>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:ScopedSlotReturnValue, index:Float, array:Array<ScopedSlotReturnValue>) -> U, ?thisArg:Dynamic):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(predicate:(value:ScopedSlotReturnValue, index:Float, array:Array<ScopedSlotReturnValue>) -> Any, ?thisArg:Dynamic):Array<ScopedSlotReturnValue> { })
	function filter<S:(ScopedSlotReturnValue)>(predicate:(value:ScopedSlotReturnValue, index:Float, array:Array<ScopedSlotReturnValue>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:ScopedSlotReturnValue, currentValue:ScopedSlotReturnValue, currentIndex:Float, array:Array<ScopedSlotReturnValue>) -> ScopedSlotReturnValue, initialValue:ScopedSlotReturnValue):ScopedSlotReturnValue { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:ScopedSlotReturnValue, currentIndex:Float, array:Array<ScopedSlotReturnValue>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:ScopedSlotReturnValue, currentValue:ScopedSlotReturnValue, currentIndex:Float, array:Array<ScopedSlotReturnValue>) -> ScopedSlotReturnValue):ScopedSlotReturnValue;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:ScopedSlotReturnValue, currentValue:ScopedSlotReturnValue, currentIndex:Float, array:Array<ScopedSlotReturnValue>) -> ScopedSlotReturnValue, initialValue:ScopedSlotReturnValue):ScopedSlotReturnValue { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:ScopedSlotReturnValue, currentIndex:Float, array:Array<ScopedSlotReturnValue>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:ScopedSlotReturnValue, currentValue:ScopedSlotReturnValue, currentIndex:Float, array:Array<ScopedSlotReturnValue>) -> ScopedSlotReturnValue):ScopedSlotReturnValue;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:ScopedSlotReturnValue, index:Float, obj:Array<ScopedSlotReturnValue>) -> Any, ?thisArg:Dynamic):ScopedSlotReturnValue { })
	function find<S:(ScopedSlotReturnValue)>(predicate:(value:ScopedSlotReturnValue, index:Float, obj:Array<ScopedSlotReturnValue>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:ScopedSlotReturnValue, index:Float, obj:Array<ScopedSlotReturnValue>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
	**/
	function fill(value:ScopedSlotReturnValue, ?start:Float, ?end:Float):ScopedSlotReturnArray;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):ScopedSlotReturnArray;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():js.lib.ArrayIterator<ts.Tuple2<Float, ScopedSlotReturnValue>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():js.lib.ArrayIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():js.lib.ArrayIterator<ScopedSlotReturnValue>;
};