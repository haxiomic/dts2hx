package js.html;

/**
	The **`ByteLengthQueuingStrategy`** interface of the Streams API provides a built-in byte length queuing strategy that can be used when constructing streams.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ByteLengthQueuingStrategy)
**/
@:native("ByteLengthQueuingStrategy") extern class ByteLengthQueuingStrategy {
	function new(init:QueuingStrategyInit);
	/**
		The read-only **`ByteLengthQueuingStrategy.highWaterMark`** property returns the total number of bytes that can be contained in the internal queue before backpressure is applied.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ByteLengthQueuingStrategy/highWaterMark)
	**/
	final highWaterMark : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ByteLengthQueuingStrategy/size)
	**/
	function size(chunk:js.lib.ArrayBufferView_<js.lib.ArrayBufferLike>):Float;
	static var prototype : ByteLengthQueuingStrategy;
}