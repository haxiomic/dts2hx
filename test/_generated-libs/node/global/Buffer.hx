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
	@:overload(function(size:Float):Buffer { })
	@:overload(function(array:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):Buffer { })
	@:overload(function(arrayBuffer:ts.AnyOf2<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer>):Buffer { })
	@:overload(function(array:Array<Dynamic>):Buffer { })
	@:overload(function(buffer:Buffer):Buffer { })
	function new(str:String, ?encoding:String);
	/**
		The initial value of Object.prototype.constructor is the standard built-in Object constructor.
	**/
	var constructor : {
		var prototype : Buffer;
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
		@:overload(function(data:Array<Float>):Buffer { })
		@:overload(function(data:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):Buffer { })
		@:overload(function(str:String, ?encoding:String):Buffer { })
		function from(arrayBuffer:ts.AnyOf2<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer>, ?byteOffset:Float, ?length:Float):Buffer;
		/**
			Creates a new Buffer using the passed {data}
		**/
		function of(items:haxe.extern.Rest<Float>):Buffer;
		/**
			Returns true if {obj} is a Buffer
		**/
		function isBuffer(obj:Dynamic):Bool;
		/**
			Returns true if {encoding} is a valid encoding argument.
			Valid string encodings in Node 0.12: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'binary'(deprecated)|'hex'
		**/
		function isEncoding(encoding:String):Null<Bool>;
		/**
			Gives the actual byte length of a string. encoding defaults to 'utf8'.
			This is not the same as String.prototype.length since that returns the number of characters in a string.
		**/
		function byteLength(string:ts.AnyOf13<String, js.lib.ArrayBuffer, js.lib.SharedArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>>, ?encoding:String):Float;
		/**
			Returns a buffer which is the result of concatenating all the buffers in the list together.
			
			If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
			If the list has exactly one item, then the first item of the list is returned.
			If the list has more than one item, then a new Buffer is created.
		**/
		function concat(list:Array<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?totalLength:Float):Buffer;
		/**
			The same as buf1.compare(buf2).
		**/
		function compare(buf1:js.lib.Uint8Array_<js.lib.ArrayBufferLike>, buf2:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):Float;
		/**
			Allocates a new buffer of {size} octets.
		**/
		function alloc(size:Float, ?fill:ts.AnyOf3<String, Float, Buffer>, ?encoding:String):Buffer;
		/**
			Allocates a new buffer of {size} octets, leaving memory not initialized, so the contents
			of the newly created Buffer are unknown and may contain sensitive data.
		**/
		function allocUnsafe(size:Float):Buffer;
		/**
			Allocates a new non-pooled buffer of {size} octets, leaving memory not initialized, so the contents
			of the newly created Buffer are unknown and may contain sensitive data.
		**/
		function allocUnsafeSlow(size:Float):Buffer;
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
		var data : Array<Float>;
	};
	function equals(otherBuffer:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):Bool;
	function compare(otherBuffer:js.lib.Uint8Array_<js.lib.ArrayBufferLike>, ?targetStart:Float, ?targetEnd:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
	function copy(targetBuffer:js.lib.Uint8Array_<js.lib.ArrayBufferLike>, ?targetStart:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):Buffer;
	/**
		Gets a new Uint8Array view of the ArrayBuffer store for this array, referencing the elements
		at begin, inclusive, up to end, exclusive.
	**/
	function subarray(begin:Float, ?end:Float):Buffer;
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
	function reverse():Buffer;
	function swap16():Buffer;
	function swap32():Buffer;
	function swap64():Buffer;
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
		Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
	**/
	function fill(value:Dynamic, ?offset:Float, ?end:Float):Buffer;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(value:ts.AnyOf3<String, Float, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?byteOffset:Float, ?encoding:String):Float;
	/**
		Returns the index of the last occurrence of a value in an array.
	**/
	function lastIndexOf(value:ts.AnyOf3<String, Float, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?byteOffset:Float, ?encoding:String):Float;
	/**
		Returns an array of key, value pairs for every entry in the array
	**/
	function entries():js.lib.IterableIterator<ts.Tuple2<Float, Float>, Dynamic, Dynamic>;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(value:ts.AnyOf3<String, Float, Buffer>, ?byteOffset:Float, ?encoding:String):Bool;
	/**
		Returns an list of keys in the array
	**/
	function keys():js.lib.IterableIterator<Float, Dynamic, Dynamic>;
	/**
		Returns an list of values in the array
	**/
	function values():js.lib.IterableIterator<Float, Dynamic, Dynamic>;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		The ArrayBuffer instance referenced by the array.
	**/
	final buffer : js.lib.ArrayBufferLike;
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
	function copyWithin(target:Float, start:Float, ?end:Float):Buffer;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(predicate:(value:Float, index:Float, array:Buffer) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	function filter(predicate:(value:Float, index:Float, array:Buffer) -> Dynamic, ?thisArg:Dynamic):js.lib.Uint8Array_<js.lib.ArrayBuffer>;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	function find(predicate:(value:Float, index:Float, obj:Buffer) -> Bool, ?thisArg:Dynamic):Null<Float>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:Float, index:Float, obj:Buffer) -> Bool, ?thisArg:Dynamic):Float;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:Float, index:Float, array:Buffer) -> Void, ?thisArg:Dynamic):Void;
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
	function map(callbackfn:(value:Float, index:Float, array:Buffer) -> Float, ?thisArg:Dynamic):js.lib.Uint8Array_<js.lib.ArrayBuffer>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of
		the callback function is the accumulated result, and is provided as an argument in the next
		call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:Buffer) -> Float, initialValue:Float):Float { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Float, currentIndex:Float, array:Buffer) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:Buffer) -> Float):Float;
	/**
		Calls the specified callback function for all the elements in an array, in descending order.
		The return value of the callback function is the accumulated result, and is provided as an
		argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:Buffer) -> Float, initialValue:Float):Float { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Float, currentIndex:Float, array:Buffer) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:Buffer) -> Float):Float;
	/**
		Sets a value or an array of values.
	**/
	function set(array:js.lib.ArrayLike<Float>, ?offset:Float):Void;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(predicate:(value:Float, index:Float, array:Buffer) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:Float, b:Float) -> Float):Buffer;
	/**
		Converts a number to a string by using the current locale.
	**/
	@:overload(function(locales:ts.AnyOf2<String, Array<String>>, ?options:js.lib.intl.NumberFormat.NumberFormatOptions):String { })
	function toLocaleString():String;
	/**
		Returns the primitive value of the specified object.
	**/
	function valueOf():Buffer;
	static var prototype : Buffer;
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
	@:overload(function(data:Array<Float>):Buffer { })
	@:overload(function(data:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):Buffer { })
	@:overload(function(str:String, ?encoding:String):Buffer { })
	static function from(arrayBuffer:ts.AnyOf2<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer>, ?byteOffset:Float, ?length:Float):Buffer;
	/**
		Creates a new Buffer using the passed {data}
	**/
	static function of(items:haxe.extern.Rest<Float>):Buffer;
	/**
		Returns true if {obj} is a Buffer
	**/
	static function isBuffer(obj:Dynamic):Bool;
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
	static function byteLength_(string:ts.AnyOf13<String, js.lib.ArrayBuffer, js.lib.SharedArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>>, ?encoding:String):Float;
	/**
		Returns a buffer which is the result of concatenating all the buffers in the list together.
		
		If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
		If the list has exactly one item, then the first item of the list is returned.
		If the list has more than one item, then a new Buffer is created.
	**/
	static function concat(list:Array<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?totalLength:Float):Buffer;
	/**
		The same as buf1.compare(buf2).
	**/
	@:native("compare")
	static function compare_(buf1:js.lib.Uint8Array_<js.lib.ArrayBufferLike>, buf2:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):Float;
	/**
		Allocates a new buffer of {size} octets.
	**/
	static function alloc(size:Float, ?fill:ts.AnyOf3<String, Float, Buffer>, ?encoding:String):Buffer;
	/**
		Allocates a new buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafe(size:Float):Buffer;
	/**
		Allocates a new non-pooled buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafeSlow(size:Float):Buffer;
	/**
		This is the number of bytes used to determine the size of pre-allocated, internal Buffer instances used for pooling. This value may be modified.
	**/
	static var poolSize : Float;
}