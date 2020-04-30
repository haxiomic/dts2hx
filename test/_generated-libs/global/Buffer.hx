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
	@:overload(function(array:ts.lib.IUint8Array):IBuffer { })
	@:overload(function(arrayBuffer:haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ISharedArrayBuffer>):IBuffer { })
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
		@:overload(function(data:ts.lib.IUint8Array):IBuffer { })
		@:overload(function(str:String, ?encoding:String):IBuffer { })
		function from(arrayBuffer:haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ISharedArrayBuffer>, ?byteOffset:Float, ?length:Float):IBuffer;
		/**
			Creates a new Buffer using the passed {data}
		**/
		function of(items:haxe.extern.Rest<Float>):IBuffer;
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
		function byteLength(string:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IArrayBuffer, haxe.extern.EitherType<ts.lib.ISharedArrayBuffer, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>>>, ?encoding:String):Float;
		/**
			Returns a buffer which is the result of concatenating all the buffers in the list together.
			
			If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
			If the list has exactly one item, then the first item of the list is returned.
			If the list has more than one item, then a new Buffer is created.
		**/
		function concat(list:std.Array<ts.lib.IUint8Array>, ?totalLength:Float):IBuffer;
		/**
			The same as buf1.compare(buf2).
		**/
		function compare(buf1:ts.lib.IUint8Array, buf2:ts.lib.IUint8Array):Float;
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
	function equals(otherBuffer:ts.lib.IUint8Array):Bool;
	function compare(otherBuffer:ts.lib.IUint8Array, ?targetStart:Float, ?targetEnd:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
	function copy(targetBuffer:ts.lib.IUint8Array, ?targetStart:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
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
	function indexOf(value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, ts.lib.IUint8Array>>, ?byteOffset:Float, ?encoding:String):Float;
	/**
		Returns the index of the last occurrence of a value in an array.
	**/
	function lastIndexOf(value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, ts.lib.IUint8Array>>, ?byteOffset:Float, ?encoding:String):Float;
	/**
		Returns an array of key, value pairs for every entry in the array
	**/
	function entries():ts.lib.IterableIterator<ts.lib.Tuple2<Float, Float>>;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, IBuffer>>, ?byteOffset:Float, ?encoding:String):Bool;
	/**
		Returns an list of keys in the array
	**/
	function keys():ts.lib.IterableIterator<Float>;
	/**
		Returns an list of values in the array
	**/
	function values():ts.lib.IterableIterator<Float>;
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
	@:overload(function(data:ts.lib.IUint8Array):IBuffer { })
	@:overload(function(str:String, ?encoding:String):IBuffer { })
	static function from(arrayBuffer:haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ISharedArrayBuffer>, ?byteOffset:Float, ?length:Float):IBuffer;
	/**
		Creates a new Buffer using the passed {data}
	**/
	static function of(items:haxe.extern.Rest<Float>):IBuffer;
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
	static function byteLength(string:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IArrayBuffer, haxe.extern.EitherType<ts.lib.ISharedArrayBuffer, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>>>, ?encoding:String):Float;
	/**
		Returns a buffer which is the result of concatenating all the buffers in the list together.
		
		If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
		If the list has exactly one item, then the first item of the list is returned.
		If the list has more than one item, then a new Buffer is created.
	**/
	static function concat(list:std.Array<ts.lib.IUint8Array>, ?totalLength:Float):IBuffer;
	/**
		The same as buf1.compare(buf2).
	**/
	@:native("compare")
	static function compare_(buf1:ts.lib.IUint8Array, buf2:ts.lib.IUint8Array):Float;
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