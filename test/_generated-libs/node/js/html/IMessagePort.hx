package js.html;

/**
	The **`MessagePort`** interface of the Channel Messaging API represents one of the two ports of a MessageChannel, allowing messages to be sent from one port and listening out for them arriving at the other.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/MessagePort)
	
	`MessagePort` class is a global reference for `import { MessagePort } from 'node:worker_threads'`
	https://nodejs.org/api/globals.html#messageport
**/
typedef IMessagePort = {
	/**
		The **`close()`** method of the MessagePort interface disconnects the port, so it is no longer active.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MessagePort/close)
	**/
	function close():Void;
	/**
		The **`postMessage()`** method of the transfers ownership of objects to other browsing contexts.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MessagePort/postMessage)
	**/
	@:overload(function(message:Dynamic, ?options:StructuredSerializeOptions):Void { })
	function postMessage(message:Dynamic, transfer:Array<Transferable>):Void;
	/**
		The **`start()`** method of the MessagePort interface starts the sending of messages queued on the port.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MessagePort/start)
	**/
	function start():Void;
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
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/message_event)
	**/
	@:optional
	dynamic function onmessage(ev:MessageEvent_<Dynamic>):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/messageerror_event)
	**/
	@:optional
	dynamic function onmessageerror(ev:MessageEvent_<Dynamic>):Dynamic;
};