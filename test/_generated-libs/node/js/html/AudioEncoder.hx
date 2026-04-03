package js.html;

/**
	The **`AudioEncoder`** interface of the WebCodecs API encodes AudioData objects.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder)
**/
@:native("AudioEncoder") extern class AudioEncoder {
	function new(init:AudioEncoderInit);
	/**
		The **`encodeQueueSize`** read-only property of the AudioEncoder interface returns the number of pending encode requests in the queue.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder/encodeQueueSize)
	**/
	final encodeQueueSize : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder/dequeue_event)
	**/
	@:optional
	dynamic function ondequeue(ev:js.html.Event):Dynamic;
	/**
		The **`state`** read-only property of the AudioEncoder interface returns the current state of the underlying codec.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder/state)
	**/
	final state : CodecState;
	/**
		The **`close()`** method of the AudioEncoder interface ends all pending work and releases system resources.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder/close)
	**/
	function close():Void;
	/**
		The **`configure()`** method of the AudioEncoder interface enqueues a control message to configure the audio encoder for encoding chunks.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder/configure)
	**/
	function configure(config:AudioEncoderConfig):Void;
	/**
		The **`encode()`** method of the AudioEncoder interface enqueues a control message to encode a given AudioData object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder/encode)
	**/
	function encode(data:AudioData):Void;
	/**
		The **`flush()`** method of the AudioEncoder interface returns a Promise that resolves once all pending messages in the queue have been completed.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder/flush)
	**/
	function flush():js.lib.Promise<ts.Undefined>;
	/**
		The **`reset()`** method of the AudioEncoder interface resets all states including configuration, control messages in the control message queue, and all pending callbacks.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder/reset)
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
	static var prototype : AudioEncoder;
	/**
		The **`isConfigSupported()`** static method of the AudioEncoder interface checks if the given config is supported (that is, if AudioEncoder objects can be successfully configured with the given config).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder/isConfigSupported_static)
	**/
	static function isConfigSupported(config:AudioEncoderConfig):js.lib.Promise<AudioEncoderSupport>;
}