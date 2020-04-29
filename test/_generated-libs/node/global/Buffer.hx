package global;
/**
	Raw data is stored in instances of the Buffer class.
	A Buffer is similar to an array of integers but corresponds to a raw memory allocation outside the V8 heap.  A Buffer cannot be resized.
	Valid string encodings: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'binary'(deprecated)|'hex'
**/
@:native("Buffer") extern class Buffer {
	/**
		Allocates a new buffer containing the given {str}.
	**/
	@:overload(function(size:Float):IBuffer { })
	@:overload(function(array:js.lib.IUint8Array):IBuffer { })
	@:overload(function(arrayBuffer:haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.ISharedArrayBuffer>):IBuffer { })
	@:overload(function(array:std.Array<Any>):IBuffer { })
	@:overload(function(buffer:IBuffer):IBuffer { })
	function new(str:String, ?encoding:String);
	/**
		The initial value of Object.prototype.constructor is the standard built-in Object constructor.
	**/
	var constructor : {
		var prototype : IBuffer;
		/**
			When passed a reference to the .buffer property of a TypedArray instance,
			the newly created Buffer will share the same allocated memory as the TypedArray.
			The optional {byteOffset} and {length} arguments specify a memory range
			within the {arrayBuffer} that will be shared by the Buffer.
			
			Creates a new Buffer using the passed {data}
			
			Creates a new Buffer containing the given JavaScript string {str}.
			If provided, the {encoding} parameter identifies the character encoding.
			If not provided, {encoding} defaults to 'utf8'.
		**/
		@:overload(function(data:std.Array<Float>):IBuffer { })
		@:overload(function(data:js.lib.IUint8Array):IBuffer { })
		@:overload(function(str:String, ?encoding:String):IBuffer { })
		function from(arrayBuffer:haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.ISharedArrayBuffer>, ?byteOffset:Float, ?length:Float):IBuffer;
		/**
			Creates a new Buffer using the passed {data}
		**/
		function of(items:std.Array<Float>):IBuffer;
		/**
			Returns true if {obj} is a Buffer
		**/
		function isBuffer(obj:Any):Bool;
		/**
			Returns true if {encoding} is a valid encoding argument.
			Valid string encodings in Node 0.12: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'binary'(deprecated)|'hex'
		**/
		function isEncoding(encoding:String):Null<Bool>;
		/**
			Gives the actual byte length of a string. encoding defaults to 'utf8'.
			This is not the same as String.prototype.length since that returns the number of characters in a string.
		**/
		function byteLength(string:haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.ISharedArrayBuffer, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, js.lib.IDataView>>>>>>>>>>>>, ?encoding:String):Float;
		/**
			Returns a buffer which is the result of concatenating all the buffers in the list together.
			
			If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
			If the list has exactly one item, then the first item of the list is returned.
			If the list has more than one item, then a new Buffer is created.
		**/
		function concat(list:std.Array<js.lib.IUint8Array>, ?totalLength:Float):IBuffer;
		/**
			The same as buf1.compare(buf2).
		**/
		function compare(buf1:js.lib.IUint8Array, buf2:js.lib.IUint8Array):Float;
		/**
			Allocates a new buffer of {size} octets.
		**/
		function alloc(size:Float, ?fill:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, IBuffer>>, ?encoding:String):IBuffer;
		/**
			Allocates a new buffer of {size} octets, leaving memory not initialized, so the contents
			of the newly created Buffer are unknown and may contain sensitive data.
		**/
		function allocUnsafe(size:Float):IBuffer;
		/**
			Allocates a new non-pooled buffer of {size} octets, leaving memory not initialized, so the contents
			of the newly created Buffer are unknown and may contain sensitive data.
		**/
		function allocUnsafeSlow(size:Float):IBuffer;
		/**
			This is the number of bytes used to determine the size of pre-allocated, internal Buffer instances used for pooling. This value may be modified.
		**/
		var poolSize : Float;
	};
	@:overload(function(string:String, offset:Float, ?encoding:String):Float { })
	@:overload(function(string:String, offset:Float, length:Float, ?encoding:String):Float { })
	function write(string:String, ?encoding:String):Float;
	/**
		Returns a string representation of an array.
	**/
	function toString(?encoding:String, ?start:Float, ?end:Float):String;
	function toJSON():{
		var type : String;
		var data : std.Array<Float>;
	};
	function equals(otherBuffer:js.lib.IUint8Array):Bool;
	function compare(otherBuffer:js.lib.IUint8Array, ?targetStart:Float, ?targetEnd:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
	function copy(targetBuffer:js.lib.IUint8Array, ?targetStart:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):IBuffer;
	/**
		Gets a new Uint8Array view of the ArrayBuffer store for this array, referencing the elements
		at begin, inclusive, up to end, exclusive.
	**/
	function subarray(begin:Float, ?end:Float):IBuffer;
	function writeUIntLE(value:Float, offset:Float, byteLength:Float):Float;
	function writeUIntBE(value:Float, offset:Float, byteLength:Float):Float;
	function writeIntLE(value:Float, offset:Float, byteLength:Float):Float;
	function writeIntBE(value:Float, offset:Float, byteLength:Float):Float;
	function readUIntLE(offset:Float, byteLength:Float):Float;
	function readUIntBE(offset:Float, byteLength:Float):Float;
	function readIntLE(offset:Float, byteLength:Float):Float;
	function readIntBE(offset:Float, byteLength:Float):Float;
	function readUInt8(offset:Float):Float;
	function readUInt16LE(offset:Float):Float;
	function readUInt16BE(offset:Float):Float;
	function readUInt32LE(offset:Float):Float;
	function readUInt32BE(offset:Float):Float;
	function readInt8(offset:Float):Float;
	function readInt16LE(offset:Float):Float;
	function readInt16BE(offset:Float):Float;
	function readInt32LE(offset:Float):Float;
	function readInt32BE(offset:Float):Float;
	function readFloatLE(offset:Float):Float;
	function readFloatBE(offset:Float):Float;
	function readDoubleLE(offset:Float):Float;
	function readDoubleBE(offset:Float):Float;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():IBuffer;
	function swap16():IBuffer;
	function swap32():IBuffer;
	function swap64():IBuffer;
	function writeUInt8(value:Float, offset:Float):Float;
	function writeUInt16LE(value:Float, offset:Float):Float;
	function writeUInt16BE(value:Float, offset:Float):Float;
	function writeUInt32LE(value:Float, offset:Float):Float;
	function writeUInt32BE(value:Float, offset:Float):Float;
	function writeInt8(value:Float, offset:Float):Float;
	function writeInt16LE(value:Float, offset:Float):Float;
	function writeInt16BE(value:Float, offset:Float):Float;
	function writeInt32LE(value:Float, offset:Float):Float;
	function writeInt32BE(value:Float, offset:Float):Float;
	function writeFloatLE(value:Float, offset:Float):Float;
	function writeFloatBE(value:Float, offset:Float):Float;
	function writeDoubleLE(value:Float, offset:Float):Float;
	function writeDoubleBE(value:Float, offset:Float):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:Any, ?offset:Float, ?end:Float):IBuffer;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.IUint8Array>>, ?byteOffset:Float, ?encoding:String):Float;
	/**
		Returns the index of the last occurrence of a value in an array.
	**/
	function lastIndexOf(value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.IUint8Array>>, ?byteOffset:Float, ?encoding:String):Float;
	/**
		Returns an array of key, value pairs for every entry in the array
	**/
	function entries():js.lib.IterableIterator<js.lib.Tuple2<Float, Float>>;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, IBuffer>>, ?byteOffset:Float, ?encoding:String):Bool;
	/**
		Returns an list of keys in the array
	**/
	function keys():js.lib.IterableIterator<Float>;
	/**
		Returns an list of values in the array
	**/
	function values():js.lib.IterableIterator<Float>;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		The ArrayBuffer instance referenced by the array.
	**/
	final buffer : haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.ISharedArrayBuffer>;
	/**
		The length in bytes of the array.
	**/
	final byteLength : Float;
	/**
		The offset in bytes of the array.
	**/
	final byteOffset : Float;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):IBuffer;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:Float, index:Float, array:js.lib.IUint8Array) -> Any, ?thisArg:Any):Bool;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	function filter(callbackfn:(value:Float, index:Float, array:js.lib.IUint8Array) -> Any, ?thisArg:Any):js.lib.IUint8Array;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	function find(predicate:(value:Float, index:Float, obj:js.lib.IUint8Array) -> Bool, ?thisArg:Any):Null<Float>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:Float, index:Float, obj:js.lib.IUint8Array) -> Bool, ?thisArg:Any):Float;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:Float, index:Float, array:js.lib.IUint8Array) -> Void, ?thisArg:Any):Void;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		The length of the array.
	**/
	final length : Float;
	/**
		Calls a defined callback function on each element of an array, and returns an array that
		contains the results.
	**/
	function map(callbackfn:(value:Float, index:Float, array:js.lib.IUint8Array) -> Float, ?thisArg:Any):js.lib.IUint8Array;
	/**
		Calls the specified callback function for all the elements in an array. The return value of
		the callback function is the accumulated result, and is provided as an argument in the next
		call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of
		the callback function is the accumulated result, and is provided as an argument in the next
		call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:js.lib.IUint8Array) -> Float, initialValue:Float):Float { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Float, currentIndex:Float, array:js.lib.IUint8Array) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:js.lib.IUint8Array) -> Float):Float;
	/**
		Calls the specified callback function for all the elements in an array, in descending order.
		The return value of the callback function is the accumulated result, and is provided as an
		argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order.
		The return value of the callback function is the accumulated result, and is provided as an
		argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:js.lib.IUint8Array) -> Float, initialValue:Float):Float { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Float, currentIndex:Float, array:js.lib.IUint8Array) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:js.lib.IUint8Array) -> Float):Float;
	/**
		Sets a value or an array of values.
	**/
	function set(array:js.lib.ArrayLike<Float>, ?offset:Float):Void;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:Float, index:Float, array:js.lib.IUint8Array) -> Any, ?thisArg:Any):Bool;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:Float, b:Float) -> Float):IBuffer;
	/**
		Converts a number to a string by using the current locale.
	**/
	function toLocaleString():String;
	static var prototype : IBuffer;
	/**
		When passed a reference to the .buffer property of a TypedArray instance,
		the newly created Buffer will share the same allocated memory as the TypedArray.
		The optional {byteOffset} and {length} arguments specify a memory range
		within the {arrayBuffer} that will be shared by the Buffer.
		
		Creates a new Buffer using the passed {data}
		
		Creates a new Buffer containing the given JavaScript string {str}.
		If provided, the {encoding} parameter identifies the character encoding.
		If not provided, {encoding} defaults to 'utf8'.
	**/
	@:overload(function(data:std.Array<Float>):IBuffer { })
	@:overload(function(data:js.lib.IUint8Array):IBuffer { })
	@:overload(function(str:String, ?encoding:String):IBuffer { })
	static function from(arrayBuffer:haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.ISharedArrayBuffer>, ?byteOffset:Float, ?length:Float):IBuffer;
	/**
		Creates a new Buffer using the passed {data}
	**/
	static function of(items:std.Array<Float>):IBuffer;
	/**
		Returns true if {obj} is a Buffer
	**/
	static function isBuffer(obj:Any):Bool;
	/**
		Returns true if {encoding} is a valid encoding argument.
		Valid string encodings in Node 0.12: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'binary'(deprecated)|'hex'
	**/
	static function isEncoding(encoding:String):Null<Bool>;
	/**
		Gives the actual byte length of a string. encoding defaults to 'utf8'.
		This is not the same as String.prototype.length since that returns the number of characters in a string.
	**/
	@:native("byteLength")
	static function byteLength_(string:haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.ISharedArrayBuffer, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, js.lib.IDataView>>>>>>>>>>>>, ?encoding:String):Float;
	/**
		Returns a buffer which is the result of concatenating all the buffers in the list together.
		
		If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
		If the list has exactly one item, then the first item of the list is returned.
		If the list has more than one item, then a new Buffer is created.
	**/
	static function concat(list:std.Array<js.lib.IUint8Array>, ?totalLength:Float):IBuffer;
	/**
		The same as buf1.compare(buf2).
	**/
	@:native("compare")
	static function compare_(buf1:js.lib.IUint8Array, buf2:js.lib.IUint8Array):Float;
	/**
		Allocates a new buffer of {size} octets.
	**/
	static function alloc(size:Float, ?fill:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, IBuffer>>, ?encoding:String):IBuffer;
	/**
		Allocates a new buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafe(size:Float):IBuffer;
	/**
		Allocates a new non-pooled buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafeSlow(size:Float):IBuffer;
	/**
		This is the number of bytes used to determine the size of pre-allocated, internal Buffer instances used for pooling. This value may be modified.
	**/
	static var poolSize : Float;
}