package js.html;

/**
	The **`CompressionStream`** interface of the Compression Streams API is an API for compressing a stream of data.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompressionStream)
**/
@:native("CompressionStream") extern class CompressionStream {
	function new(format:CompressionFormat);
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompressionStream/readable)
	**/
	final readable : ReadableStream<js.lib.Uint8Array_<js.lib.ArrayBuffer>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompressionStream/writable)
	**/
	final writable : WritableStream<js.lib.BufferSource>;
	static var prototype : CompressionStream;
}