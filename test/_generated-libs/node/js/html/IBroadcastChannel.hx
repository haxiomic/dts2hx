package js.html;

/**
	The **`BroadcastChannel`** interface represents a named channel that any browsing context of a given origin can subscribe to.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/BroadcastChannel)
	
	`BroadcastChannel` class is a global reference for `import { BroadcastChannel } from 'node:worker_threads'`
	https://nodejs.org/api/globals.html#broadcastchannel
**/
typedef IBroadcastChannel = {
	/**
		The **`name`** read-only property of the BroadcastChannel interface returns a string, which uniquely identifies the given channel with its name.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/BroadcastChannel/name)
	**/
	final name : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/BroadcastChannel/message_event)
	**/
	@:optional
	dynamic function onmessage(ev:MessageEvent_<Dynamic>):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/BroadcastChannel/messageerror_event)
	**/
	@:optional
	dynamic function onmessageerror(ev:MessageEvent_<Dynamic>):Dynamic;
	/**
		The **`close()`** method of the BroadcastChannel interface terminates the connection to the underlying channel, allowing the object to be garbage collected.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/BroadcastChannel/close)
	**/
	function close():Void;
	/**
		The **`postMessage()`** method of the BroadcastChannel interface sends a message, which can be of any kind of Object, to each listener in any browsing context with the same origin.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/BroadcastChannel/postMessage)
	**/
	function postMessage(message:Dynamic):Void;
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