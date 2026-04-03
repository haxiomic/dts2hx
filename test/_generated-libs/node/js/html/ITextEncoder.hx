package js.html;

/**
	The **`TextEncoder`** interface takes a stream of code points as input and emits a stream of UTF-8 bytes.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextEncoder)
	
	`TextEncoder` class is a global reference for `import { TextEncoder } from 'node:util'`
	https://nodejs.org/api/globals.html#textencoder
**/
typedef ITextEncoder = {
	/**
		The **`TextEncoder.encode()`** method takes a string as input, and returns a Global_Objects/Uint8Array containing the text given in parameters encoded with the specific method for that TextEncoder object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextEncoder/encode)
	**/
	function encode(?input:String):js.lib.Uint8Array_<js.lib.ArrayBuffer>;
	/**
		The **`TextEncoder.encodeInto()`** method takes a string to encode and a destination Uint8Array to put resulting UTF-8 encoded text into, and returns a dictionary object indicating the progress of the encoding.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextEncoder/encodeInto)
	**/
	function encodeInto(source:String, destination:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):TextEncoderEncodeIntoResult;
	/**
		Returns "utf-8".
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextEncoder/encoding)
	**/
	final encoding : String;
};