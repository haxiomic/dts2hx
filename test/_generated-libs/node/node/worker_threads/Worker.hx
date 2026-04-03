package node.worker_threads;

/**
	The `Worker` class represents an independent JavaScript execution thread.
	Most Node.js APIs are available inside of it.
	
	Notable differences inside a Worker environment are:
	
	* The `process.stdin`, `process.stdout`, and `process.stderr` streams may be redirected by the parent thread.
	* The `import { isMainThread } from 'node:worker_threads'` property is set to `false`.
	* The `import { parentPort } from 'node:worker_threads'` message port is available.
	* `process.exit()` does not stop the whole program, just the single thread,
	and `process.abort()` is not available.
	* `process.chdir()` and `process` methods that set group or user ids
	are not available.
	* `process.env` is a copy of the parent thread's environment variables,
	unless otherwise specified. Changes to one copy are not visible in other
	threads, and are not visible to native add-ons (unless `worker.SHARE_ENV` is passed as the `env` option to the `Worker` constructor). On Windows, unlike the main thread, a copy of the
	environment variables operates in a case-sensitive manner.
	* `process.title` cannot be modified.
	* Signals are not delivered through `process.on('...')`.
	* Execution may stop at any point as a result of `worker.terminate()` being invoked.
	* IPC channels from parent processes are not accessible.
	* The `trace_events` module is not supported.
	* Native add-ons can only be loaded from multiple threads if they fulfill `certain conditions`.
	
	Creating `Worker` instances inside of other `Worker`s is possible.
	
	Like [Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API) and the `node:cluster module`, two-way communication
	can be achieved through inter-thread message passing. Internally, a `Worker` has
	a built-in pair of `MessagePort` s that are already associated with each
	other when the `Worker` is created. While the `MessagePort` object on the parent
	side is not directly exposed, its functionalities are exposed through `worker.postMessage()` and the `worker.on('message')` event
	on the `Worker` object for the parent thread.
	
	To create custom messaging channels (which is encouraged over using the default
	global channel because it facilitates separation of concerns), users can create
	a `MessageChannel` object on either thread and pass one of the`MessagePort`s on that `MessageChannel` to the other thread through a
	pre-existing channel, such as the global one.
	
	See `port.postMessage()` for more information on how messages are passed,
	and what kind of JavaScript values can be successfully transported through
	the thread barrier.
	
	```js
	import assert from 'node:assert';
	import {
	  Worker, MessageChannel, MessagePort, isMainThread, parentPort,
	} from 'node:worker_threads';
	if (isMainThread) {
	  const worker = new Worker(__filename);
	  const subChannel = new MessageChannel();
	  worker.postMessage({ hereIsYourPort: subChannel.port1 }, [subChannel.port1]);
	  subChannel.port2.on('message', (value) => {
	    console.log('received:', value);
	  });
	} else {
	  parentPort.once('message', (value) => {
	    assert(value.hereIsYourPort instanceof MessagePort);
	    value.hereIsYourPort.postMessage('the worker is sending this');
	    value.hereIsYourPort.close();
	  });
	}
	```
**/
@:jsRequire("worker_threads", "Worker") extern class Worker extends node.Events<Worker> {
	function new(filename:ts.AnyOf2<String, node.url.URL>, ?options:WorkerOptions);
	/**
		If `stdin: true` was passed to the `Worker` constructor, this is a
		writable stream. The data written to this stream will be made available in
		the worker thread as `process.stdin`.
	**/
	final stdin : Null<node.stream.stream.Writable>;
	/**
		This is a readable stream which contains data written to `process.stdout` inside the worker thread. If `stdout: true` was not passed to the `Worker` constructor, then data is piped to the
		parent thread's `process.stdout` stream.
	**/
	final stdout : node.stream.stream.Readable;
	/**
		This is a readable stream which contains data written to `process.stderr` inside the worker thread. If `stderr: true` was not passed to the `Worker` constructor, then data is piped to the
		parent thread's `process.stderr` stream.
	**/
	final stderr : node.stream.stream.Readable;
	/**
		An integer identifier for the referenced thread. Inside the worker thread,
		it is available as `import { threadId } from 'node:node:worker_threads'`.
		This value is unique for each `Worker` instance inside a single process.
	**/
	final threadId : Float;
	/**
		Provides the set of JS engine resource constraints for this Worker thread.
		If the `resourceLimits` option was passed to the `Worker` constructor,
		this matches its values.
		
		If the worker has stopped, the return value is an empty object.
	**/
	@:optional
	final resourceLimits : ResourceLimits;
	/**
		An object that can be used to query performance information from a worker
		instance. Similar to `perf_hooks.performance`.
	**/
	final performance : WorkerPerformance;
	/**
		Send a message to the worker that is received via `require('node:worker_threads').parentPort.on('message')`.
		See `port.postMessage()` for more details.
	**/
	function postMessage(value:Dynamic, ?transferList:haxe.ds.ReadOnlyArray<Transferable>):Void;
	/**
		Opposite of `unref()`, calling `ref()` on a previously `unref()`ed worker does _not_ let the program exit if it's the only active handle left (the default
		behavior). If the worker is `ref()`ed, calling `ref()` again has
		no effect.
	**/
	function ref():Void;
	/**
		Calling `unref()` on a worker allows the thread to exit if this is the only
		active handle in the event system. If the worker is already `unref()`ed calling `unref()` again has no effect.
	**/
	function unref():Void;
	/**
		Stop all JavaScript execution in the worker thread as soon as possible.
		Returns a Promise for the exit code that is fulfilled when the `'exit' event` is emitted.
	**/
	function terminate():js.lib.Promise<Float>;
	/**
		Returns a readable stream for a V8 snapshot of the current state of the Worker.
		See `v8.getHeapSnapshot()` for more details.
		
		If the Worker thread is no longer running, which may occur before the `'exit' event` is emitted, the returned `Promise` is rejected
		immediately with an `ERR_WORKER_NOT_RUNNING` error.
	**/
	function getHeapSnapshot():js.lib.Promise<node.stream.stream.Readable>;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function addListener(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	/**
		Synchronously calls each of the listeners registered for the event named `eventName`, in the order they were registered, passing the supplied arguments
		to each.
		
		Returns `true` if the event had listeners, `false` otherwise.
		
		```js
		import { EventEmitter } from 'node:events';
		const myEmitter = new EventEmitter();
		
		// First listener
		myEmitter.on('event', function firstListener() {
		  console.log('Helloooo! first listener');
		});
		// Second listener
		myEmitter.on('event', function secondListener(arg1, arg2) {
		  console.log(`event with parameters ${arg1}, ${arg2} in second listener`);
		});
		// Third listener
		myEmitter.on('event', function thirdListener(...args) {
		  const parameters = args.join(', ');
		  console.log(`event with parameters ${parameters} in third listener`);
		});
		
		console.log(myEmitter.listeners('event'));
		
		myEmitter.emit('event', 1, 2, 3, 4, 5);
		
		// Prints:
		// [
		//   [Function: firstListener],
		//   [Function: secondListener],
		//   [Function: thirdListener]
		// ]
		// Helloooo! first listener
		// event with parameters 1, 2 in second listener
		// event with parameters 1, 2, 3, 4, 5 in third listener
		```
	**/
	@:overload(function(event:String, exitCode:Float):Bool { })
	@:overload(function(event:String, value:Dynamic):Bool { })
	@:overload(function(event:String, error:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String, err:js.lib.Error):Bool;
	/**
		Adds the `listener` function to the end of the listeners array for the event
		named `eventName`. No checks are made to see if the `listener` has already
		been added. Multiple calls passing the same combination of `eventName` and
		`listener` will result in the `listener` being added, and called, multiple times.
		
		```js
		server.on('connection', (stream) => {
		  console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The `emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		import { EventEmitter } from 'node:events';
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function on(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	/**
		Adds a **one-time** `listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		  console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The `emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		import { EventEmitter } from 'node:events';
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function once(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	/**
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`
		and `listener` will result in the `listener` being added, and called, multiple times.
		
		```js
		server.prependListener('connection', (stream) => {
		  console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function prependListener(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	/**
		Adds a **one-time**`listener` function for the event named `eventName` to the _beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		  console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function prependOnceListener(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	/**
		Removes the specified `listener` from the listener array for the event named `eventName`.
		
		```js
		const callback = (stream) => {
		  console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any `removeListener()` or `removeAllListeners()` calls _after_ emitting and _before_ the last listener finishes execution
		will not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		import { EventEmitter } from 'node:events';
		class MyEmitter extends EventEmitter {}
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		  console.log('A');
		  myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		  console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')` listener is removed:
		
		```js
		import { EventEmitter } from 'node:events';
		const ee = new EventEmitter();
		
		function pong() {
		  console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function removeListener(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	/**
		Alias for `emitter.removeListener()`.
	**/
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function off(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Worker;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Worker;
	static var prototype : Worker;
}