package js.html;

/**
	The **`ReadableStreamDefaultController`** interface of the Streams API represents a controller allowing control of a ReadableStream's state and internal queue.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultController)
**/
@:native("ReadableStreamDefaultController") extern class ReadableStreamDefaultController<R> {
	function new();
	/**
		The **`desiredSize`** read-only property of the required to fill the stream's internal queue.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultController/desiredSize)
	**/
	final desiredSize : Null<Float>;
	/**
		The **`close()`** method of the ReadableStreamDefaultController interface closes the associated stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultController/close)
	**/
	function close():Void;
	/**
		The **`enqueue()`** method of the ```js-nolint enqueue(chunk) ``` - `chunk` - : The chunk to enqueue.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultController/enqueue)
	**/
	function enqueue(?chunk:R):Void;
	/**
		The **`error()`** method of the with the associated stream to error.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultController/error)
	**/
	function error(?e:Dynamic):Void;
	static var prototype : ReadableStreamDefaultController<Dynamic>;
}