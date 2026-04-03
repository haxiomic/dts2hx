package node.worker_threads;

/**
	Instances of the `worker.MessageChannel` class represent an asynchronous,
	two-way communications channel.
	The `MessageChannel` has no methods of its own. `new MessageChannel()` yields an object with `port1` and `port2` properties, which refer to linked `MessagePort` instances.
	
	```js
	import { MessageChannel } from 'node:worker_threads';
	
	const { port1, port2 } = new MessageChannel();
	port1.on('message', (message) => console.log('received', message));
	port2.postMessage({ foo: 'bar' });
	// Prints: received { foo: 'bar' } from the `port1.on('message')` listener
	```
**/
@:jsRequire("worker_threads", "MessageChannel") extern class MessageChannel {
	function new();
	final port1 : MessagePort;
	final port2 : MessagePort;
	static var prototype : MessageChannel;
}