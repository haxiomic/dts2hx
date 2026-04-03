package js.html;

/**
	The **`RTCIceTransport`** interface provides access to information about the ICE transport layer over which the data is being sent and received.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCIceTransport)
**/
@:native("RTCIceTransport") extern class RTCIceTransport {
	function new();
	/**
		The **`gatheringState`** read-only property of the RTCIceTransport interface returns a string that indicates the current gathering state of the ICE agent for this transport: `'new'`, `'gathering'`, or `'complete'`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCIceTransport/gatheringState)
	**/
	final gatheringState : RTCIceGathererState;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCIceTransport/gatheringstatechange_event)
	**/
	@:optional
	dynamic function ongatheringstatechange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCIceTransport/selectedcandidatepairchange_event)
	**/
	@:optional
	dynamic function onselectedcandidatepairchange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCIceTransport/statechange_event)
	**/
	@:optional
	dynamic function onstatechange(ev:js.html.Event):Dynamic;
	/**
		The **`state`** read-only property of the RTCIceTransport interface returns the current state of the ICE transport, so you can determine the state of ICE gathering in which the ICE agent currently is operating.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCIceTransport/state)
	**/
	final state : RTCIceTransportState;
	/**
		The **`getSelectedCandidatePair()`** method of the RTCIceTransport interface returns an RTCIceCandidatePair object containing the current best-choice pair of ICE candidates describing the configuration of the endpoints of the transport.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCIceTransport/getSelectedCandidatePair)
	**/
	function getSelectedCandidatePair():Null<RTCIceCandidatePair>;
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
	static var prototype : RTCIceTransport;
}