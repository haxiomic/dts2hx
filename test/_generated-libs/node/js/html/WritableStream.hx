package js.html;

/**
	The **`WritableStream`** interface of the Streams API provides a standard abstraction for writing streaming data to a destination, known as a sink.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream)
**/
@:native("WritableStream") extern class WritableStream<W> {
	function new<W>(?underlyingSink:UnderlyingSink<W>, ?strategy:QueuingStrategy<W>);
	/**
		The **`locked`** read-only property of the WritableStream interface returns a boolean indicating whether the `WritableStream` is locked to a writer.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/locked)
	**/
	final locked : Bool;
	/**
		The **`abort()`** method of the WritableStream interface aborts the stream, signaling that the producer can no longer successfully write to the stream and it is to be immediately moved to an error state, with any queued writes discarded.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/abort)
	**/
	function abort(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	/**
		The **`close()`** method of the WritableStream interface closes the associated stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/close)
	**/
	function close():js.lib.Promise<ts.Undefined>;
	/**
		The **`getWriter()`** method of the WritableStream interface returns a new instance of WritableStreamDefaultWriter and locks the stream to that instance.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/getWriter)
	**/
	function getWriter():WritableStreamDefaultWriter<W>;
	static var prototype : WritableStream<Dynamic>;
}