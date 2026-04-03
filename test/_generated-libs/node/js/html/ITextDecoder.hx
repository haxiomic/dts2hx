package js.html;

/**
	The **`TextDecoder`** interface represents a decoder for a specific text encoding, such as `UTF-8`, `ISO-8859-2`, `KOI8-R`, `GBK`, etc.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextDecoder)
	
	`TextDecoder` class is a global reference for `import { TextDecoder } from 'node:util'`
	https://nodejs.org/api/globals.html#textdecoder
**/
typedef ITextDecoder = {
	/**
		The **`TextDecoder.decode()`** method returns a string containing text decoded from the buffer passed as a parameter.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextDecoder/decode)
	**/
	function decode(?input:AllowSharedBufferSource, ?options:js.html.TextDecodeOptions):String;
	/**
		Returns encoding's name, lowercased.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextDecoder/encoding)
	**/
	final encoding : String;
	/**
		Returns true if error mode is "fatal", otherwise false.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextDecoder/fatal)
	**/
	final fatal : Bool;
	/**
		Returns the value of ignore BOM.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextDecoder/ignoreBOM)
	**/
	final ignoreBOM : Bool;
};