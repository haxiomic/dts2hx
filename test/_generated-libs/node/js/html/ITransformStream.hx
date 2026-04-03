package js.html;

/**
	The **`TransformStream`** interface of the Streams API represents a concrete implementation of the pipe chain _transform stream_ concept.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransformStream)
**/
typedef ITransformStream<I, O> = {
	/**
		The **`readable`** read-only property of the TransformStream interface returns the ReadableStream instance controlled by this `TransformStream`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransformStream/readable)
	**/
	final readable : ReadableStream<O>;
	/**
		The **`writable`** read-only property of the TransformStream interface returns the WritableStream instance controlled by this `TransformStream`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransformStream/writable)
	**/
	final writable : WritableStream<I>;
};