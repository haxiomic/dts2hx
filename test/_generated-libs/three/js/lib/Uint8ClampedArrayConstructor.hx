package js.lib;
extern typedef Uint8ClampedArrayConstructor = { final prototype : Uint8ClampedArray; /**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float; /**
		Returns a new array from a set of elements.
	**/
	function of(items:std.Array<Float>):Uint8ClampedArray; /**
		Creates an array from an array-like or iterable object.
		
		
		
		Creates an array from an array-like or iterable object.
		
		
		
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<T>(arrayLike:ArrayLike<T>, mapfn:(v:T, k:Float) -> Float, ?thisArg:Any):Uint8ClampedArray { })
	@:overload(function(arrayLike:Iterable<Float>, ?mapfn:(v:Float, k:Float) -> Float, ?thisArg:Any):Uint8ClampedArray { })
	function from(arrayLike:ArrayLike<Float>):Uint8ClampedArray; };