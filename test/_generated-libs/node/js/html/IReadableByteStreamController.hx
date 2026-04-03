package js.html;

/**
	The **`ReadableByteStreamController`** interface of the Streams API represents a controller for a readable byte stream.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableByteStreamController)
**/
typedef IReadableByteStreamController = {
	/**
		The **`byobRequest`** read-only property of the ReadableByteStreamController interface returns the current BYOB request, or `null` if there are no pending requests.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableByteStreamController/byobRequest)
	**/
	final byobRequest : Null<ReadableStreamBYOBRequest>;
	/**
		The **`desiredSize`** read-only property of the ReadableByteStreamController interface returns the number of bytes required to fill the stream's internal queue to its 'desired size'.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableByteStreamController/desiredSize)
	**/
	final desiredSize : Null<Float>;
	/**
		The **`close()`** method of the ReadableByteStreamController interface closes the associated stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableByteStreamController/close)
	**/
	function close():Void;
	/**
		The **`enqueue()`** method of the ReadableByteStreamController interface enqueues a given chunk on the associated readable byte stream (the chunk is copied into the stream's internal queues).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableByteStreamController/enqueue)
	**/
	function enqueue(chunk:js.lib.ArrayBufferView_<js.lib.ArrayBuffer>):Void;
	/**
		The **`error()`** method of the ReadableByteStreamController interface causes any future interactions with the associated stream to error with the specified reason.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableByteStreamController/error)
	**/
	function error(?e:Dynamic):Void;
};