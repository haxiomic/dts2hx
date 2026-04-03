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
@:jsRequire("worker_threads", "BroadcastChannel") extern class BroadcastChannel extends js.html.EventTarget {
	function new(name:String);
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
	function ref():BroadcastChannel;
	function unref():BroadcastChannel;
	static var prototype : BroadcastChannel;
}