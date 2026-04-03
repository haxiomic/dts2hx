package node.worker_threads;

/**
	Instances of `BroadcastChannel` allow asynchronous one-to-many communication
	with all other `BroadcastChannel` instances bound to the same channel name.
	
	```js
	'use strict';
	
	import {
	  isMainThread,
	  BroadcastChannel,
	  Worker,
	} from 'node:worker_threads';
	
	const bc = new BroadcastChannel('hello');
	
	if (isMainThread) {
	  let c = 0;
	  bc.onmessage = (event) => {
	    console.log(event.data);
	    if (++c === 10) bc.close();
	  };
	  for (let n = 0; n < 10; n++)
	    new Worker(__filename);
	} else {
	  bc.postMessage('hello from every worker');
	  bc.close();
	}
	```
**/
typedef IBroadcastChannel = {
	final name : String;
	/**
		Invoked with a single \`MessageEvent\` argument when a message is received.
	**/
	dynamic function onmessage(message:undici_types.MessageEvent<Dynamic>):Void;
	/**
		Invoked with a received message cannot be deserialized.
	**/
	dynamic function onmessageerror(message:undici_types.MessageEvent<Dynamic>):Void;
	/**
		Closes the `BroadcastChannel` connection.
	**/
	function close():Void;
	function postMessage(message:Any):Void;
	/**
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	function addEventListener(type:String, callback:Null<js.html.EventListenerOrEventListenerObject>, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
	/**
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	function removeEventListener(type:String, callback:Null<js.html.EventListenerOrEventListenerObject>, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
	function ref():BroadcastChannel;
	function unref():BroadcastChannel;
};