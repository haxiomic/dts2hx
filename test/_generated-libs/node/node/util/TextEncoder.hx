package node.util;

/**
	An implementation of the [WHATWG Encoding Standard](https://encoding.spec.whatwg.org/) `TextEncoder` API. All
	instances of `TextEncoder` only support UTF-8 encoding.
	
	```js
	const encoder = new TextEncoder();
	const uint8array = encoder.encode('this is some data');
	```
	
	The `TextEncoder` class is also available on the global object.
**/
@:jsRequire("util", "TextEncoder") extern class TextEncoder {
	function new();
	/**
		The encoding supported by the `TextEncoder` instance. Always set to `'utf-8'`.
	**/
	final encoding : String;
	/**
		UTF-8 encodes the `input` string and returns a `Uint8Array` containing the
		encoded bytes.
	**/
	function encode(?input:String):global.nodejs.NonSharedUint8Array;
	/**
		UTF-8 encodes the `src` string to the `dest` Uint8Array and returns an object
		containing the read Unicode code units and written UTF-8 bytes.
		
		```js
		const encoder = new TextEncoder();
		const src = 'this is some data';
		const dest = new Uint8Array(10);
		const { read, written } = encoder.encodeInto(src, dest);
		```
	**/
	function encodeInto(src:String, dest:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):EncodeIntoResult;
	static var prototype : TextEncoder;
}