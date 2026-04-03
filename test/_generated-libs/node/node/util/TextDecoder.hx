package node.util;

/**
	An implementation of the [WHATWG Encoding Standard](https://encoding.spec.whatwg.org/) `TextDecoder` API.
	
	```js
	const decoder = new TextDecoder();
	const u8arr = new Uint8Array([72, 101, 108, 108, 111]);
	console.log(decoder.decode(u8arr)); // Hello
	```
**/
@:jsRequire("util", "TextDecoder") extern class TextDecoder {
	function new(?encoding:String, ?options:{ @:optional var fatal : Bool; @:optional var ignoreBOM : Bool; });
	/**
		The encoding supported by the `TextDecoder` instance.
	**/
	final encoding : String;
	/**
		The value will be `true` if decoding errors result in a `TypeError` being
		thrown.
	**/
	final fatal : Bool;
	/**
		The value will be `true` if the decoding result will include the byte order
		mark.
	**/
	final ignoreBOM : Bool;
	/**
		Decodes the `input` and returns a string. If `options.stream` is `true`, any
		incomplete byte sequences occurring at the end of the `input` are buffered
		internally and emitted after the next call to `textDecoder.decode()`.
		
		If `textDecoder.fatal` is `true`, decoding errors that occur will result in a `TypeError` being thrown.
	**/
	function decode(?input:ts.AnyOf13<js.lib.ArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, ?options:{ @:optional var stream : Bool; }):String;
	static var prototype : TextDecoder;
}