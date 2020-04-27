package js.lib;
extern typedef Uint16ArrayConstructor = { final prototype : Uint16Array; /**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float; /**
		Returns a new array from a set of elements.
	**/
	function of(items:std.Array<Float>):Uint16Array; /**
		Creates an array from an array-like or iterable object.
		
		
		
		Creates an array from an array-like or iterable object.
		
		
		
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<T>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> Float, ?thisArg:Any):Uint16Array { })
	@:overload(function(arrayLike:Iterable<Float>, ?mapfn:(v:Float, k:Float) -> Float, ?thisArg:Any):Uint16Array { })
	function from(arrayLike:ArrayLike<Float>):Uint16Array; };