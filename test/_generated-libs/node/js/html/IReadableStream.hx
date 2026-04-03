package js.html;

/**
	The `ReadableStream` interface of the Streams API represents a readable stream of byte data.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream)
**/
typedef IReadableStream<R> = {
	/**
		The **`locked`** read-only property of the ReadableStream interface returns whether or not the readable stream is locked to a reader.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/locked)
	**/
	final locked : Bool;
	/**
		The **`cancel()`** method of the ReadableStream interface returns a Promise that resolves when the stream is canceled.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/cancel)
	**/
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	/**
		The **`getReader()`** method of the ReadableStream interface creates a reader and locks the stream to it.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/getReader)
	**/
	@:overload(function():ReadableStreamDefaultReader<R> { })
	@:overload(function(?options:ReadableStreamGetReaderOptions):ReadableStreamReader<R> { })
	function getReader(options:{ var mode : String; }):ReadableStreamBYOBReader;
	/**
		The **`pipeThrough()`** method of the ReadableStream interface provides a chainable way of piping the current stream through a transform stream or any other writable/readable pair.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/pipeThrough)
	**/
	function pipeThrough<T>(transform:ReadableWritablePair<T, R>, ?options:StreamPipeOptions):ReadableStream<T>;
	/**
		The **`pipeTo()`** method of the ReadableStream interface pipes the current `ReadableStream` to a given WritableStream and returns a Promise that fulfills when the piping process completes successfully, or rejects if any errors were encountered.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/pipeTo)
	**/
	function pipeTo(destination:WritableStream<R>, ?options:StreamPipeOptions):js.lib.Promise<ts.Undefined>;
	/**
		The **`tee()`** method of the two-element array containing the two resulting branches as new ReadableStream instances.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/tee)
	**/
	function tee():ts.Tuple2<ReadableStream<R>, ReadableStream<R>>;
};