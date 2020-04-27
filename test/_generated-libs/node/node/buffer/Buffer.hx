package node.buffer;
@:jsRequire("buffer", "Buffer") extern class Buffer {
	@:overload(function(size:Float):global.Buffer { })
	@:overload(function(array:js.lib.Uint8Array):global.Buffer { })
	@:overload(function(arrayBuffer:haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer>):global.Buffer { })
	@:overload(function(array:std.Array<Any>):global.Buffer { })
	@:overload(function(buffer:global.Buffer):global.Buffer { })
	function new(str:String, ?encoding:String);
	static var prototype : global.Buffer;
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
	@:overload(function(data:std.Array<Float>):global.Buffer { })
	@:overload(function(data:js.lib.Uint8Array):global.Buffer { })
	@:overload(function(str:String, ?encoding:String):global.Buffer { })
	static function from(arrayBuffer:haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer>, ?byteOffset:Float, ?length:Float):global.Buffer;
	/**
		Creates a new Buffer using the passed {data}
	**/
	static function of(items:std.Array<Float>):global.Buffer;
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
	static function byteLength(string:haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.SharedArrayBuffer, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>>, ?encoding:String):Float;
	/**
		Returns a buffer which is the result of concatenating all the buffers in the list together.
		
		If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
		If the list has exactly one item, then the first item of the list is returned.
		If the list has more than one item, then a new Buffer is created.
	**/
	static function concat(list:std.Array<js.lib.Uint8Array>, ?totalLength:Float):global.Buffer;
	/**
		The same as buf1.compare(buf2).
	**/
	static function compare(buf1:js.lib.Uint8Array, buf2:js.lib.Uint8Array):Float;
	/**
		Allocates a new buffer of {size} octets.
	**/
	static function alloc(size:Float, ?fill:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, global.Buffer>>, ?encoding:String):global.Buffer;
	/**
		Allocates a new buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafe(size:Float):global.Buffer;
	/**
		Allocates a new non-pooled buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafeSlow(size:Float):global.Buffer;
	/**
		This is the number of bytes used to determine the size of pre-allocated, internal Buffer instances used for pooling. This value may be modified.
	**/
	static var poolSize : Float;
}