package js.html;

/**
	The **`TextEncoderStream`** interface of the Encoding API converts a stream of strings into bytes in the UTF-8 encoding.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextEncoderStream)
**/
@:native("TextEncoderStream") extern class TextEncoderStream {
	function new();
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompressionStream/readable)
	**/
	final readable : ReadableStream<js.lib.Uint8Array_<js.lib.ArrayBuffer>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompressionStream/writable)
	**/
	final writable : WritableStream<String>;
	/**
		Returns "utf-8".
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextEncoder/encoding)
	**/
	final encoding : String;
	static var prototype : TextEncoderStream;
}