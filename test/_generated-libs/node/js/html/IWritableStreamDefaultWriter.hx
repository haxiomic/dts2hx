package js.html;

/**
	The **`WritableStreamDefaultWriter`** interface of the Streams API is the object returned by WritableStream.getWriter() and once created locks the writer to the `WritableStream` ensuring that no other streams can write to the underlying sink.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter)
**/
typedef IWritableStreamDefaultWriter<W> = {
	/**
		The **`closed`** read-only property of the the stream errors or the writer's lock is released.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/closed)
	**/
	final closed : js.lib.Promise<ts.Undefined>;
	/**
		The **`desiredSize`** read-only property of the to fill the stream's internal queue.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/desiredSize)
	**/
	final desiredSize : Null<Float>;
	/**
		The **`ready`** read-only property of the that resolves when the desired size of the stream's internal queue transitions from non-positive to positive, signaling that it is no longer applying backpressure.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/ready)
	**/
	final ready : js.lib.Promise<ts.Undefined>;
	/**
		The **`abort()`** method of the the producer can no longer successfully write to the stream and it is to be immediately moved to an error state, with any queued writes discarded.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/abort)
	**/
	function abort(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	/**
		The **`close()`** method of the stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/close)
	**/
	function close():js.lib.Promise<ts.Undefined>;
	/**
		The **`releaseLock()`** method of the corresponding stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/releaseLock)
	**/
	function releaseLock():Void;
	/**
		The **`write()`** method of the operation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/write)
	**/
	function write(?chunk:W):js.lib.Promise<ts.Undefined>;
};