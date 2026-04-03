package node.buffer;

/**
	A [`Blob`](https://developer.mozilla.org/en-US/docs/Web/API/Blob) encapsulates immutable, raw data that can be safely shared across
	multiple worker threads.
**/
@:jsRequire("buffer", "Blob") extern class Blob {
	/**
		Creates a new `Blob` object containing a concatenation of the given sources.
		
		{ArrayBuffer}, {TypedArray}, {DataView}, and {Buffer} sources are copied into
		the 'Blob' and can therefore be safely modified after the 'Blob' is created.
		
		String sources are also copied into the `Blob`.
	**/
	function new(sources:Array<ts.AnyOf15<String, js.lib.ArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>, Blob>>, ?options:BlobOptions);
	/**
		The total size of the `Blob` in bytes.
	**/
	final size : Float;
	/**
		The content-type of the `Blob`.
	**/
	final type : String;
	/**
		Returns a promise that fulfills with an [ArrayBuffer](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer) containing a copy of
		the `Blob` data.
	**/
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	/**
		The `blob.bytes()` method returns the byte of the `Blob` object as a `Promise<Uint8Array>`.
		
		```js
		const blob = new Blob(['hello']);
		blob.bytes().then((bytes) => {
		  console.log(bytes); // Outputs: Uint8Array(5) [ 104, 101, 108, 108, 111 ]
		});
		```
	**/
	function bytes():js.lib.Promise<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>;
	/**
		Creates and returns a new `Blob` containing a subset of this `Blob` objects
		data. The original `Blob` is not altered.
	**/
	function slice(?start:Float, ?end:Float, ?type:String):Blob;
	/**
		Returns a promise that fulfills with the contents of the `Blob` decoded as a
		UTF-8 string.
	**/
	function text():js.lib.Promise<String>;
	/**
		Returns a new `ReadableStream` that allows the content of the `Blob` to be read.
	**/
	function stream():node.stream.web.ReadableStream<Dynamic>;
	static var prototype : Blob;
}