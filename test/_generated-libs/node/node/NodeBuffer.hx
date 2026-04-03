package node;

@:jsRequire("node:buffer") @valueModuleOnly extern class NodeBuffer {
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