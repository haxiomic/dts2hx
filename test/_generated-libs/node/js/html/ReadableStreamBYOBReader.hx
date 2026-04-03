package js.html;

/**
	The `ReadableStreamBYOBReader` interface of the Streams API defines a reader for a ReadableStream that supports zero-copy reading from an underlying byte source.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader)
**/
@:native("ReadableStreamBYOBReader") extern class ReadableStreamBYOBReader {
	function new(stream:ReadableStream<js.lib.Uint8Array_<js.lib.ArrayBuffer>>);
	/**
		The **`read()`** method of the ReadableStreamBYOBReader interface is used to read data into a view on a user-supplied buffer from an associated readable byte stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader/read)
	**/
	function read<T:(js.lib.ArrayBufferView_<js.lib.ArrayBufferLike>)>(view:T):js.lib.Promise<ReadableStreamReadResult<T>>;
	/**
		The **`releaseLock()`** method of the ReadableStreamBYOBReader interface releases the reader's lock on the stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader/releaseLock)
	**/
	function releaseLock():Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader/closed)
	**/
	final closed : js.lib.Promise<ts.Undefined>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader/cancel)
	**/
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	static var prototype : ReadableStreamBYOBReader;
}