package vue;

typedef VNodeChildrenArrayContents = {
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
	function pop():Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>;
	/**
		Appends new elements to the end of an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>):Float;
	/**
		Combines two or more arrays.
		This method returns a new array without modifying any existing arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<Null<ts.AnyOf6<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>, js.lib.ConcatArray<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>>>>):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>> { })
	function concat(items:haxe.extern.Rest<js.lib.ConcatArray<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>>):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>;
	/**
		Adds all the elements of an array into a string, separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an array in place.
		This method mutates the array and returns a reference to the same array.
	**/
	function reverse():Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>;
	/**
		Removes the first element from an array and returns it.
		If the array is empty, undefined is returned and the array is not modified.
	**/
	function shift():Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>;
	/**
		Returns a copy of a section of an array.
		For both start and end, a negative index can be used to indicate an offset from the end of the array.
		For example, -2 refers to the second to last element of the array.
	**/
	function slice(?start:Float, ?end:Float):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>;
	/**
		Sorts an array in place.
		This method mutates the array and returns a reference to the same array.
	**/
	function sort(?compareFn:(a:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, b:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>) -> Float):VNodeChildrenArrayContents;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>> { })
	function splice(start:Float, ?deleteCount:Float):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>;
	/**
		Inserts new elements at the start of an array, and returns the new length of the array.
	**/
	function unshift(items:haxe.extern.Rest<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>):Float;
	/**
		Returns the index of the first occurrence of a value in an array, or -1 if it is not present.
	**/
	function indexOf(searchElement:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array, or -1 if it is not present.
	**/
	function lastIndexOf(searchElement:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	@:overload(function(predicate:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Any, ?thisArg:Dynamic):Bool { })
	function every<S:(Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>)>(predicate:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Bool, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(predicate:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> U, ?thisArg:Dynamic):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(predicate:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Any, ?thisArg:Dynamic):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>> { })
	function filter<S:(Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>)>(predicate:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentIndex:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, initialValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>):Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>> { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentIndex:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentIndex:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>):Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentIndex:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, initialValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>):Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>> { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentIndex:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentIndex:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>):Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, obj:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Any, ?thisArg:Dynamic):Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>> { })
	function find<S:(Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>)>(predicate:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, obj:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, obj:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
	**/
	function fill(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, ?start:Float, ?end:Float):VNodeChildrenArrayContents;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):VNodeChildrenArrayContents;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():js.lib.ArrayIterator<ts.Tuple2<Float, Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():js.lib.ArrayIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():js.lib.ArrayIterator<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>;
};