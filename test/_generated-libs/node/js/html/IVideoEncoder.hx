package js.html;

/**
	The **`VideoEncoder`** interface of the WebCodecs API encodes VideoFrame objects into EncodedVideoChunks.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder)
**/
typedef IVideoEncoder = {
	/**
		The **`encodeQueueSize`** read-only property of the VideoEncoder interface returns the number of pending encode requests in the queue.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder/encodeQueueSize)
	**/
	final encodeQueueSize : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder/dequeue_event)
	**/
	@:optional
	dynamic function ondequeue(ev:js.html.Event):Dynamic;
	/**
		The **`state`** read-only property of the VideoEncoder interface returns the current state of the underlying codec.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder/state)
	**/
	final state : CodecState;
	/**
		The **`close()`** method of the VideoEncoder interface ends all pending work and releases system resources.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder/close)
	**/
	function close():Void;
	/**
		The **`configure()`** method of the VideoEncoder interface changes the VideoEncoder.state of the encoder to 'configured' and asynchronously prepares the encoder to accept VideoEncoders for encoding with the specified parameters.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder/configure)
	**/
	function configure(config:VideoEncoderConfig):Void;
	/**
		The **`encode()`** method of the VideoEncoder interface asynchronously encodes a VideoFrame.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder/encode)
	**/
	function encode(frame:VideoFrame, ?options:VideoEncoderEncodeOptions):Void;
	/**
		The **`flush()`** method of the VideoEncoder interface forces all pending encodes to complete.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder/flush)
	**/
	function flush():js.lib.Promise<ts.Undefined>;
	/**
		The **`reset()`** method of the VideoEncoder interface synchronously cancels all pending encodes and callbacks, frees all underlying resources and sets the VideoEncoder.state to 'unconfigured'.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder/reset)
	**/
	function reset():Void;
	/**
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
};