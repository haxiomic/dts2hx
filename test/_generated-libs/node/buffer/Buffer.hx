package node.buffer;
@:jsRequire("buffer", "Buffer") extern class Buffer {
	/**
		Allocates a new buffer containing the given {str}.
	**/
	@:overload(function(size:Float):global.IBuffer { })
	@:overload(function(array:ts.lib.IUint8Array):global.IBuffer { })
	@:overload(function(arrayBuffer:haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ISharedArrayBuffer>):global.IBuffer { })
	@:overload(function(array:std.Array<Any>):global.IBuffer { })
	@:overload(function(buffer:global.IBuffer):global.IBuffer { })
	function new(str:String, ?encoding:String);
	static var prototype : global.IBuffer;
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
	@:overload(function(data:std.Array<Float>):global.IBuffer { })
	@:overload(function(data:ts.lib.IUint8Array):global.IBuffer { })
	@:overload(function(str:String, ?encoding:String):global.IBuffer { })
	static function from(arrayBuffer:haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ISharedArrayBuffer>, ?byteOffset:Float, ?length:Float):global.IBuffer;
	/**
		Creates a new Buffer using the passed {data}
	**/
	static function of(items:std.Array<Float>):global.IBuffer;
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
	static function concat(list:std.Array<ts.lib.IUint8Array>, ?totalLength:Float):global.IBuffer;
	/**
		The same as buf1.compare(buf2).
	**/
	static function compare(buf1:ts.lib.IUint8Array, buf2:ts.lib.IUint8Array):Float;
	/**
		Allocates a new buffer of {size} octets.
	**/
	static function alloc(size:Float, ?fill:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, global.IBuffer>>, ?encoding:String):global.IBuffer;
	/**
		Allocates a new buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafe(size:Float):global.IBuffer;
	/**
		Allocates a new non-pooled buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafeSlow(size:Float):global.IBuffer;
	/**
		This is the number of bytes used to determine the size of pre-allocated, internal Buffer instances used for pooling. This value may be modified.
	**/
	static var poolSize : Float;
}