package js.html;

/**
	The **`TransformStreamDefaultController`** interface of the Streams API provides methods to manipulate the associated ReadableStream and WritableStream.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransformStreamDefaultController)
**/
typedef ITransformStreamDefaultController<O> = {
	/**
		The **`desiredSize`** read-only property of the TransformStreamDefaultController interface returns the desired size to fill the queue of the associated ReadableStream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransformStreamDefaultController/desiredSize)
	**/
	final desiredSize : Null<Float>;
	/**
		The **`enqueue()`** method of the TransformStreamDefaultController interface enqueues the given chunk in the readable side of the stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransformStreamDefaultController/enqueue)
	**/
	function enqueue(?chunk:O):Void;
	/**
		The **`error()`** method of the TransformStreamDefaultController interface errors both sides of the stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransformStreamDefaultController/error)
	**/
	function error(?reason:Dynamic):Void;
	/**
		The **`terminate()`** method of the TransformStreamDefaultController interface closes the readable side and errors the writable side of the stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransformStreamDefaultController/terminate)
	**/
	function terminate():Void;
};