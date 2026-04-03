package js.html;

/**
	The **`EventSource`** interface is web content's interface to server-sent events.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventSource)
**/
typedef IEventSource = {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventSource/error_event)
	**/
	@:optional
	dynamic function onerror(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventSource/message_event)
	**/
	@:optional
	dynamic function onmessage(ev:MessageEvent_<Dynamic>):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventSource/open_event)
	**/
	@:optional
	dynamic function onopen(ev:js.html.Event):Dynamic;
	/**
		The **`readyState`** read-only property of the connection.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventSource/readyState)
	**/
	final readyState : Float;
	/**
		The **`url`** read-only property of the URL of the source.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventSource/url)
	**/
	final url : String;
	/**
		The **`withCredentials`** read-only property of the the `EventSource` object was instantiated with CORS credentials set.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventSource/withCredentials)
	**/
	final withCredentials : Bool;
	/**
		The **`close()`** method of the EventSource interface closes the connection, if one is made, and sets the ```js-nolint close() ``` None.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventSource/close)
	**/
	function close():Void;
	final CONNECTING : Int;
	final OPEN : Int;
	final CLOSED : Int;
	/**
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	@:overload(function(type:String, listener:(event:MessageEvent_<Dynamic>) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	@:overload(function(type:String, listener:(event:MessageEvent_<Dynamic>) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
};