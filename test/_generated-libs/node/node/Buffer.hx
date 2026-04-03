package node;

/**
	`Buffer` objects are used to represent a fixed-length sequence of bytes. Many
	Node.js APIs support `Buffer`s.
	
	The `Buffer` class is a subclass of JavaScript's [`Uint8Array`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8Array) class and
	extends it with methods that cover additional use cases. Node.js APIs accept
	plain [`Uint8Array`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8Array) s wherever `Buffer`s are supported as well.
	
	While the `Buffer` class is available within the global scope, it is still
	recommended to explicitly reference it via an import or require statement.
	
	```js
	import { Buffer } from 'node:buffer';
	
	// Creates a zero-filled Buffer of length 10.
	const buf1 = Buffer.alloc(10);
	
	// Creates a Buffer of length 10,
	// filled with bytes which all have the value `1`.
	const buf2 = Buffer.alloc(10, 1);
	
	// Creates an uninitialized buffer of length 10.
	// This is faster than calling Buffer.alloc() but the returned
	// Buffer instance might contain old data that needs to be
	// overwritten using fill(), write(), or other functions that fill the Buffer's
	// contents.
	const buf3 = Buffer.allocUnsafe(10);
	
	// Creates a Buffer containing the bytes [1, 2, 3].
	const buf4 = Buffer.from([1, 2, 3]);
	
	// Creates a Buffer containing the bytes [1, 1, 1, 1] – the entries
	// are all truncated using `(value &#x26; 255)` to fit into the range 0–255.
	const buf5 = Buffer.from([257, 257.5, -255, '1']);
	
	// Creates a Buffer containing the UTF-8-encoded bytes for the string 'tést':
	// [0x74, 0xc3, 0xa9, 0x73, 0x74] (in hexadecimal notation)
	// [116, 195, 169, 115, 116] (in decimal notation)
	const buf6 = Buffer.from('tést');
	
	// Creates a Buffer containing the Latin-1 bytes [0x74, 0xe9, 0x73, 0x74].
	const buf7 = Buffer.from('tést', 'latin1');
	```
**/
@:jsRequire("buffer") @valueModuleOnly extern class Buffer {
	/**
		This function returns `true` if `input` contains only valid UTF-8-encoded data,
		including the case in which `input` is empty.
		
		Throws if the `input` is a detached array buffer.
	**/
	static function isUtf8(input:ts.AnyOf12<js.lib.ArrayBuffer, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>):Bool;
	/**
		This function returns `true` if `input` contains only valid ASCII-encoded data,
		including the case in which `input` is empty.
		
		Throws if the `input` is a detached array buffer.
	**/
	static function isAscii(input:ts.AnyOf12<js.lib.ArrayBuffer, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>):Bool;
	/**
		Re-encodes the given `Buffer` or `Uint8Array` instance from one character
		encoding to another. Returns a new `Buffer` instance.
		
		Throws if the `fromEnc` or `toEnc` specify invalid character encodings or if
		conversion from `fromEnc` to `toEnc` is not permitted.
		
		Encodings supported by `buffer.transcode()` are: `'ascii'`, `'utf8'`, `'utf16le'`, `'ucs2'`, `'latin1'`, and `'binary'`.
		
		The transcoding process will use substitution characters if a given byte
		sequence cannot be adequately represented in the target encoding. For instance:
		
		```js
		import { Buffer, transcode } from 'node:buffer';
		
		const newBuf = transcode(Buffer.from('€'), 'utf8', 'ascii');
		console.log(newBuf.toString('ascii'));
		// Prints: '?'
		```
		
		Because the Euro (`€`) sign is not representable in US-ASCII, it is replaced
		with `?` in the transcoded `Buffer`.
	**/
	static function transcode(source:js.lib.Uint8Array_<js.lib.ArrayBufferLike>, fromEnc:node.buffer.TranscodeEncoding, toEnc:node.buffer.TranscodeEncoding):node.buffer.NonSharedBuffer;
	/**
		Resolves a `'blob:nodedata:...'` an associated `Blob` object registered using
		a prior call to `URL.createObjectURL()`.
	**/
	static function resolveObjectURL(id:String):Null<node.buffer.Blob>;
	static var INSPECT_MAX_BYTES : Float;
	static final kMaxLength : Float;
	static final kStringMaxLength : Float;
	static final constants : {
		var MAX_LENGTH : Float;
		var MAX_STRING_LENGTH : Float;
	};
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/atob)
		
		Decodes a string of Base64-encoded data into bytes, and encodes those bytes
		into a string using Latin-1 (ISO-8859-1).
		
		The `data` may be any JavaScript-value that can be coerced into a string.
		
		**This function is only provided for compatibility with legacy web platform APIs**
		**and should never be used in new code, because they use strings to represent**
		**binary data and predate the introduction of typed arrays in JavaScript.**
		**For code running using Node.js APIs, converting between base64-encoded strings**
		**and binary data should be performed using `Buffer.from(str, 'base64')` and `buf.toString('base64')`.**
	**/
	@:overload(function(data:String):String { })
	static function atob(data:String):String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/btoa)
		
		Decodes a string into bytes using Latin-1 (ISO-8859), and encodes those bytes
		into a string using Base64.
		
		The `data` may be any JavaScript-value that can be coerced into a string.
		
		**This function is only provided for compatibility with legacy web platform APIs**
		**and should never be used in new code, because they use strings to represent**
		**binary data and predate the introduction of typed arrays in JavaScript.**
		**For code running using Node.js APIs, converting between base64-encoded strings**
		**and binary data should be performed using `Buffer.from(str, 'base64')` and `buf.toString('base64')`.**
	**/
	@:overload(function(data:String):String { })
	static function btoa(data:String):String;
}