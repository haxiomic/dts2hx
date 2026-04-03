package node.string_decoder;

@:jsRequire("string_decoder", "StringDecoder") extern class StringDecoder {
	function new(?encoding:global.nodejs.BufferEncoding);
	/**
		Returns a decoded string, ensuring that any incomplete multibyte characters at
		the end of the `Buffer`, or `TypedArray`, or `DataView` are omitted from the
		returned string and stored in an internal buffer for the next call to `stringDecoder.write()` or `stringDecoder.end()`.
	**/
	function write(buffer:ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>):String;
	/**
		Returns any remaining input stored in the internal buffer as a string. Bytes
		representing incomplete UTF-8 and UTF-16 characters will be replaced with
		substitution characters appropriate for the character encoding.
		
		If the `buffer` argument is provided, one final call to `stringDecoder.write()` is performed before returning the remaining input.
		After `end()` is called, the `stringDecoder` object can be reused for new input.
	**/
	function end(?buffer:ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>):String;
	static var prototype : StringDecoder;
}