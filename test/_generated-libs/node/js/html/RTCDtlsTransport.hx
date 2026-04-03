package js.html;

/**
	The **`RTCDtlsTransport`** interface provides access to information about the Datagram Transport Layer Security (**DTLS**) transport over which a RTCPeerConnection's RTP and RTCP packets are sent and received by its RTCRtpSender and RTCRtpReceiver objects.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCDtlsTransport)
**/
@:native("RTCDtlsTransport") extern class RTCDtlsTransport {
	function new();
	/**
		The **`iceTransport`** read-only property of the **RTCDtlsTransport** interface contains a reference to the underlying RTCIceTransport.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCDtlsTransport/iceTransport)
	**/
	final iceTransport : RTCIceTransport;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCDtlsTransport/error_event)
	**/
	@:optional
	dynamic function onerror(ev:RTCErrorEvent):Dynamic;
	@:optional
	dynamic function onstatechange(ev:js.html.Event):Dynamic;
	/**
		The **`state`** read-only property of the Datagram Transport Layer Security (**DTLS**) transport state.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCDtlsTransport/state)
	**/
	final state : RTCDtlsTransportState;
	function getRemoteCertificates():Array<js.lib.ArrayBuffer>;
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
	static var prototype : RTCDtlsTransport;
}