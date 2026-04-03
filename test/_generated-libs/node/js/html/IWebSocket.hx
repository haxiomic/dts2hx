package js.html;

/**
	The `WebSocket` object provides the API for creating and managing a WebSocket connection to a server, as well as for sending and receiving data on the connection.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket)
**/
typedef IWebSocket = {
	/**
		The **`WebSocket.binaryType`** property controls the type of binary data being received over the WebSocket connection.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/binaryType)
	**/
	var binaryType : js.html.BinaryType;
	/**
		The **`WebSocket.bufferedAmount`** read-only property returns the number of bytes of data that have been queued using calls to `send()` but not yet transmitted to the network.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/bufferedAmount)
	**/
	final bufferedAmount : Float;
	/**
		The **`WebSocket.extensions`** read-only property returns the extensions selected by the server.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/extensions)
	**/
	final extensions : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/close_event)
	**/
	@:optional
	dynamic function onclose(ev:js.html.CloseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/error_event)
	**/
	@:optional
	dynamic function onerror(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/message_event)
	**/
	@:optional
	dynamic function onmessage(ev:MessageEvent_<Dynamic>):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/open_event)
	**/
	@:optional
	dynamic function onopen(ev:js.html.Event):Dynamic;
	/**
		The **`WebSocket.protocol`** read-only property returns the name of the sub-protocol the server selected; this will be one of the strings specified in the `protocols` parameter when creating the WebSocket object, or the empty string if no connection is established.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/protocol)
	**/
	final protocol : String;
	/**
		The **`WebSocket.readyState`** read-only property returns the current state of the WebSocket connection.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/readyState)
	**/
	final readyState : Float;
	/**
		The **`WebSocket.url`** read-only property returns the absolute URL of the WebSocket as resolved by the constructor.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/url)
	**/
	final url : String;
	/**
		The **`WebSocket.close()`** method closes the already `CLOSED`, this method does nothing.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/close)
	**/
	function close(?code:Float, ?reason:String):Void;
	/**
		The **`WebSocket.send()`** method enqueues the specified data to be transmitted to the server over the WebSocket connection, increasing the value of `bufferedAmount` by the number of bytes needed to contain the data.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket/send)
	**/
	function send(data:ts.AnyOf5<String, js.lib.ArrayBuffer, js.lib.SharedArrayBuffer, js.lib.ArrayBufferView_<js.lib.ArrayBufferLike>, js.html.Blob>):Void;
	final CONNECTING : Int;
	final OPEN : Int;
	final CLOSING : Int;
	final CLOSED : Int;
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