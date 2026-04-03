package js.html;

/**
	The **`RTCSctpTransport`** interface provides information which describes a Stream Control Transmission Protocol (**SCTP**) transport.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport)
**/
typedef IRTCSctpTransport = {
	/**
		The **`maxChannels`** read-only property of the RTCSctpTransport interface indicates the maximum number of RTCDataChannel objects that can be opened simultaneously.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport/maxChannels)
	**/
	final maxChannels : Null<Float>;
	/**
		The **`maxMessageSize`** read-only property of the RTCSctpTransport interface indicates the maximum size of a message that can be sent using the RTCDataChannel.send() method.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport/maxMessageSize)
	**/
	final maxMessageSize : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport/statechange_event)
	**/
	@:optional
	dynamic function onstatechange(ev:js.html.Event):Dynamic;
	/**
		The **`state`** read-only property of the RTCSctpTransport interface provides information which describes a Stream Control Transmission Protocol (SCTP) transport state.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport/state)
	**/
	final state : RTCSctpTransportState;
	/**
		The **`transport`** read-only property of the RTCSctpTransport interface returns a RTCDtlsTransport object representing the DTLS transport used for the transmission and receipt of data packets.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport/transport)
	**/
	final transport : RTCDtlsTransport;
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