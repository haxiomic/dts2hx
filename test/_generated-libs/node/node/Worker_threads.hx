package node;

/**
	The `node:worker_threads` module enables the use of threads that execute
	JavaScript in parallel. To access it:
	
	```js
	import worker from 'node:worker_threads';
	```
	
	Workers (threads) are useful for performing CPU-intensive JavaScript operations.
	They do not help much with I/O-intensive work. The Node.js built-in
	asynchronous I/O operations are more efficient than Workers can be.
	
	Unlike `child_process` or `cluster`, `worker_threads` can share memory. They do
	so by transferring `ArrayBuffer` instances or sharing `SharedArrayBuffer` instances.
	
	```js
	import {
	  Worker, isMainThread, parentPort, workerData,
	} from 'node:worker_threads';
	import { parse } = from 'some-js-parsing-library';
	
	if (isMainThread) {
	  module.exports = function parseJSAsync(script) {
	    return new Promise((resolve, reject) => {
	      const worker = new Worker(__filename, {
	        workerData: script,
	      });
	      worker.on('message', resolve);
	      worker.on('error', reject);
	      worker.on('exit', (code) => {
	        if (code !== 0)
	          reject(new Error(`Worker stopped with exit code ${code}`));
	      });
	    });
	  };
	} else {
	  const script = workerData;
	  parentPort.postMessage(parse(script));
	}
	```
	
	The above example spawns a Worker thread for each `parseJSAsync()` call. In
	practice, use a pool of Workers for these kinds of tasks. Otherwise, the
	overhead of creating Workers would likely exceed their benefit.
	
	When implementing a worker pool, use the `AsyncResource` API to inform
	diagnostic tools (e.g. to provide asynchronous stack traces) about the
	correlation between tasks and their outcomes. See `"Using AsyncResource for a Worker thread pool"` in the `async_hooks` documentation for an example implementation.
	
	Worker threads inherit non-process-specific options by default. Refer to `Worker constructor options` to know how to customize worker thread options,
	specifically `argv` and `execArgv` options.
**/
@:jsRequire("worker_threads") @valueModuleOnly extern class Worker_threads {
	/**
		Mark an object as not transferable. If `object` occurs in the transfer list of
		a `port.postMessage()` call, it is ignored.
		
		In particular, this makes sense for objects that can be cloned, rather than
		transferred, and which are used by other objects on the sending side.
		For example, Node.js marks the `ArrayBuffer`s it uses for its `Buffer pool` with this.
		
		This operation cannot be undone.
		
		```js
		import { MessageChannel, markAsUntransferable } from 'node:worker_threads';
		
		const pooledBuffer = new ArrayBuffer(8);
		const typedArray1 = new Uint8Array(pooledBuffer);
		const typedArray2 = new Float64Array(pooledBuffer);
		
		markAsUntransferable(pooledBuffer);
		
		const { port1 } = new MessageChannel();
		port1.postMessage(typedArray1, [ typedArray1.buffer ]);
		
		// The following line prints the contents of typedArray1 -- it still owns
		// its memory and has been cloned, not transferred. Without
		// `markAsUntransferable()`, this would print an empty Uint8Array.
		// typedArray2 is intact as well.
		console.log(typedArray1);
		console.log(typedArray2);
		```
		
		There is no equivalent to this API in browsers.
	**/
	static function markAsUntransferable(object:Dynamic):Void;
	/**
		Transfer a `MessagePort` to a different `vm` Context. The original `port` object is rendered unusable, and the returned `MessagePort` instance
		takes its place.
		
		The returned `MessagePort` is an object in the target context and
		inherits from its global `Object` class. Objects passed to the [`port.onmessage()`](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/onmessage) listener are also created in the
		target context
		and inherit from its global `Object` class.
		
		However, the created `MessagePort` no longer inherits from [`EventTarget`](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget), and only
		[`port.onmessage()`](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/onmessage) can be used to receive
		events using it.
	**/
	static function moveMessagePortToContext(port:node.worker_threads.MessagePort, contextifiedSandbox:node.vm.Context):node.worker_threads.MessagePort;
	/**
		Receive a single message from a given `MessagePort`. If no message is available,`undefined` is returned, otherwise an object with a single `message` property
		that contains the message payload, corresponding to the oldest message in the `MessagePort`'s queue.
		
		```js
		import { MessageChannel, receiveMessageOnPort } from 'node:worker_threads';
		const { port1, port2 } = new MessageChannel();
		port1.postMessage({ hello: 'world' });
		
		console.log(receiveMessageOnPort(port2));
		// Prints: { message: { hello: 'world' } }
		console.log(receiveMessageOnPort(port2));
		// Prints: undefined
		```
		
		When this function is used, no `'message'` event is emitted and the `onmessage` listener is not invoked.
	**/
	static function receiveMessageOnPort(port:node.worker_threads.MessagePort):Null<{
		var message : Dynamic;
	}>;
	/**
		Within a worker thread, `worker.getEnvironmentData()` returns a clone
		of data passed to the spawning thread's `worker.setEnvironmentData()`.
		Every new `Worker` receives its own copy of the environment data
		automatically.
		
		```js
		import {
		  Worker,
		  isMainThread,
		  setEnvironmentData,
		  getEnvironmentData,
		} from 'node:worker_threads';
		
		if (isMainThread) {
		  setEnvironmentData('Hello', 'World!');
		  const worker = new Worker(__filename);
		} else {
		  console.log(getEnvironmentData('Hello'));  // Prints 'World!'.
		}
		```
	**/
	static function getEnvironmentData(key:node.worker_threads.Serializable):node.worker_threads.Serializable;
	/**
		The `worker.setEnvironmentData()` API sets the content of `worker.getEnvironmentData()` in the current thread and all new `Worker` instances spawned from the current context.
	**/
	static function setEnvironmentData(key:node.worker_threads.Serializable, ?value:node.worker_threads.Serializable):Void;
	/**
		Sends a value to another worker, identified by its thread ID.
	**/
	@:overload(function(threadId:Float, value:Dynamic, transferList:haxe.ds.ReadOnlyArray<node.worker_threads.Transferable>, ?timeout:Float):js.lib.Promise<ts.Undefined> { })
	static function postMessageToThread(threadId:Float, value:Dynamic, ?timeout:Float):js.lib.Promise<ts.Undefined>;
	static final isMainThread : Bool;
	static final parentPort : Null<node.worker_threads.MessagePort>;
	static final resourceLimits : node.worker_threads.ResourceLimits;
	static final SHARE_ENV : js.lib.Symbol;
	static final threadId : Float;
	static final workerData : Dynamic;
}