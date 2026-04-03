package js.html;

/**
	The **`TextDecoderStream`** interface of the Encoding API converts a stream of text in a binary encoding, such as UTF-8 etc., to a stream of strings.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextDecoderStream)
**/
typedef ITextDecoderStream = {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompressionStream/readable)
	**/
	final readable : ReadableStream<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompressionStream/writable)
	**/
	final writable : WritableStream<js.lib.BufferSource>;
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