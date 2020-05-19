package vue;

typedef VNodeChildrenArrayContents = {
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
	function pop():Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>;
	/**
		Appends new elements to an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>):Float;
	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<Null<ts.AnyOf6<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>, js.lib.ConcatArray<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>>>>):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>> { })
	function concat(items:haxe.extern.Rest<js.lib.ConcatArray<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>>):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>;
	/**
		Removes the first element from an array and returns it.
	**/
	function shift():Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, b:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>) -> Float):VNodeChildrenArrayContents;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>> { })
	function splice(start:Float, ?deleteCount:Float):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>;
	/**
		Inserts new elements at the start of an array.
	**/
	function unshift(items:haxe.extern.Rest<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>):Float;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array.
	**/
	function lastIndexOf(searchElement:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Any, ?thisArg:Dynamic):Bool;
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
		
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(callbackfn:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Any, ?thisArg:Dynamic):Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>> { })
	function filter<S>(callbackfn:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentIndex:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, initialValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>):Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>> { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentIndex:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentValue:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, currentIndex:Float, array:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>):Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
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
	function find<S>(predicate:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, obj:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>, index:Float, obj:Array<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
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
	function entries():js.lib.IterableIterator<ts.Tuple2<Float, Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():js.lib.IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():js.lib.IterableIterator<Null<ts.AnyOf5<String, Bool, VNode, VNodeChildrenArrayContents, ts.Tuple1<vue.types.vnode.ScopedSlot>>>>;
};