package node;

typedef StaticEventEmitterIteratorOptions = {
	/**
		Names of events that will end the iteration.
	**/
	@:optional
	var close : Array<String>;
	/**
		The high watermark. The emitter is paused every time the size of events being buffered is higher than it.
		Supported only on emitters implementing `pause()` and `resume()` methods.
	**/
	@:optional
	var highWaterMark : Float;
	/**
		The low watermark. The emitter is resumed every time the size of events being buffered is lower than it.
		Supported only on emitters implementing `pause()` and `resume()` methods.
	**/
	@:optional
	var lowWaterMark : Float;
	/**
		Can be used to cancel awaiting events.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};