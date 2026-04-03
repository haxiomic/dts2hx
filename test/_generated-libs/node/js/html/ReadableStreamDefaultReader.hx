package js.html;

/**
	The **`ReadableStreamDefaultReader`** interface of the Streams API represents a default reader that can be used to read stream data supplied from a network (such as a fetch request).
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultReader)
**/
@:native("ReadableStreamDefaultReader") extern class ReadableStreamDefaultReader<R> {
	function new<R>(stream:ReadableStream<R>);
	/**
		The **`read()`** method of the ReadableStreamDefaultReader interface returns a Promise providing access to the next chunk in the stream's internal queue.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultReader/read)
	**/
	function read():js.lib.Promise<ReadableStreamReadResult<R>>;
	/**
		The **`releaseLock()`** method of the ReadableStreamDefaultReader interface releases the reader's lock on the stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultReader/releaseLock)
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
	static var prototype : ReadableStreamDefaultReader<Dynamic>;
}