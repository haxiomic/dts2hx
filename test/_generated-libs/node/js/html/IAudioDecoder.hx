package js.html;

/**
	The **`AudioDecoder`** interface of the WebCodecs API decodes chunks of audio.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder)
**/
typedef IAudioDecoder = {
	/**
		The **`decodeQueueSize`** read-only property of the AudioDecoder interface returns the number of pending decode requests in the queue.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder/decodeQueueSize)
	**/
	final decodeQueueSize : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder/dequeue_event)
	**/
	@:optional
	dynamic function ondequeue(ev:js.html.Event):Dynamic;
	/**
		The **`state`** read-only property of the AudioDecoder interface returns the current state of the underlying codec.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder/state)
	**/
	final state : CodecState;
	/**
		The **`close()`** method of the AudioDecoder interface ends all pending work and releases system resources.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder/close)
	**/
	function close():Void;
	/**
		The **`configure()`** method of the AudioDecoder interface enqueues a control message to configure the audio decoder for decoding chunks.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder/configure)
	**/
	function configure(config:AudioDecoderConfig):Void;
	/**
		The **`decode()`** method of the AudioDecoder interface enqueues a control message to decode a given chunk of audio.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder/decode)
	**/
	function decode(chunk:EncodedAudioChunk):Void;
	/**
		The **`flush()`** method of the AudioDecoder interface returns a Promise that resolves once all pending messages in the queue have been completed.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder/flush)
	**/
	function flush():js.lib.Promise<ts.Undefined>;
	/**
		The **`reset()`** method of the AudioDecoder interface resets all states including configuration, control messages in the control message queue, and all pending callbacks.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder/reset)
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