package js.html;

/**
	The **`DecompressionStream`** interface of the Compression Streams API is an API for decompressing a stream of data.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/DecompressionStream)
**/
typedef IDecompressionStream = {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompressionStream/readable)
	**/
	final readable : ReadableStream<js.lib.Uint8Array_<js.lib.ArrayBuffer>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompressionStream/writable)
	**/
	final writable : WritableStream<js.lib.BufferSource>;
};