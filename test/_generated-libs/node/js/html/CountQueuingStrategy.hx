package js.html;

/**
	The **`CountQueuingStrategy`** interface of the Streams API provides a built-in chunk counting queuing strategy that can be used when constructing streams.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CountQueuingStrategy)
**/
@:native("CountQueuingStrategy") extern class CountQueuingStrategy {
	function new(init:QueuingStrategyInit);
	/**
		The read-only **`CountQueuingStrategy.highWaterMark`** property returns the total number of chunks that can be contained in the internal queue before backpressure is applied.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CountQueuingStrategy/highWaterMark)
	**/
	final highWaterMark : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CountQueuingStrategy/size)
	**/
	function size(chunk:Dynamic):Float;
	static var prototype : CountQueuingStrategy;
}