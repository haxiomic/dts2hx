package node.cluster;

/**
	A `Worker` object contains all public information and method about a worker.
	In the primary it can be obtained using `cluster.workers`. In a worker
	it can be obtained using `cluster.worker`.
**/
@:jsRequire("cluster", "Worker") extern class Worker extends node.Events<Worker> {
	/**
		Each new worker is given its own unique id, this id is stored in the `id`.
		
		While a worker is alive, this is the key that indexes it in `cluster.workers`.
	**/
	var id : Float;
	/**
		All workers are created using [`child_process.fork()`](https://nodejs.org/docs/latest-v20.x/api/child_process.html#child_processforkmodulepath-args-options), the returned object
		from this function is stored as `.process`. In a worker, the global `process` is stored.
		
		See: [Child Process module](https://nodejs.org/docs/latest-v20.x/api/child_process.html#child_processforkmodulepath-args-options).
		
		Workers will call `process.exit(0)` if the `'disconnect'` event occurs
		on `process` and `.exitedAfterDisconnect` is not `true`. This protects against
		accidental disconnection.
	**/
	var process : node.child_process.ChildProcess;
	/**
		Send a message to a worker or primary, optionally with a handle.
		
		In the primary, this sends a message to a specific worker. It is identical to [`ChildProcess.send()`](https://nodejs.org/docs/latest-v20.x/api/child_process.html#subprocesssendmessage-sendhandle-options-callback).
		
		In a worker, this sends a message to the primary. It is identical to `process.send()`.
		
		This example will echo back all messages from the primary:
		
		```js
		if (cluster.isPrimary) {
		  const worker = cluster.fork();
		  worker.send('hi there');
		
		} else if (cluster.isWorker) {
		  process.on('message', (msg) => {
		    process.send(msg);
		  });
		}
		```
	**/
	@:overload(function(message:node.child_process.Serializable, sendHandle:node.child_process.SendHandle, ?callback:(error:Null<js.lib.Error>) -> Void):Bool { })
	@:overload(function(message:node.child_process.Serializable, sendHandle:node.child_process.SendHandle, ?options:node.child_process.MessageOptions, ?callback:(error:Null<js.lib.Error>) -> Void):Bool { })
	function send(message:node.child_process.Serializable, ?callback:(error:Null<js.lib.Error>) -> Void):Bool;
	/**
		This function will kill the worker. In the primary worker, it does this by
		disconnecting the `worker.process`, and once disconnected, killing with `signal`. In the worker, it does it by killing the process with `signal`.
		
		The `kill()` function kills the worker process without waiting for a graceful
		disconnect, it has the same behavior as `worker.process.kill()`.
		
		This method is aliased as `worker.destroy()` for backwards compatibility.
		
		In a worker, `process.kill()` exists, but it is not this function;
		it is [`kill()`](https://nodejs.org/docs/latest-v20.x/api/process.html#processkillpid-signal).
	**/
	function kill(?signal:String):Void;
	function destroy(?signal:String):Void;
	/**
		In a worker, this function will close all servers, wait for the `'close'` event
		on those servers, and then disconnect the IPC channel.
		
		In the primary, an internal message is sent to the worker causing it to call `.disconnect()` on itself.
		
		Causes `.exitedAfterDisconnect` to be set.
		
		After a server is closed, it will no longer accept new connections,
		but connections may be accepted by any other listening worker. Existing
		connections will be allowed to close as usual. When no more connections exist,
		see `server.close()`, the IPC channel to the worker will close allowing it
		to die gracefully.
		
		The above applies _only_ to server connections, client connections are not
		automatically closed by workers, and disconnect does not wait for them to close
		before exiting.
		
		In a worker, `process.disconnect` exists, but it is not this function;
		it is `disconnect()`.
		
		Because long living server connections may block workers from disconnecting, it
		may be useful to send a message, so application specific actions may be taken to
		close them. It also may be useful to implement a timeout, killing a worker if
		the `'disconnect'` event has not been emitted after some time.
		
		```js
		import net from 'node:net';
		if (cluster.isPrimary) {
		  const worker = cluster.fork();
		  let timeout;
		
		  worker.on('listening', (address) => {
		    worker.send('shutdown');
		    worker.disconnect();
		    timeout = setTimeout(() => {
		      worker.kill();
		    }, 2000);
		  });
		
		  worker.on('disconnect', () => {
		    clearTimeout(timeout);
		  });
		
		} else if (cluster.isWorker) {
		  const server = net.createServer((socket) => {
		    // Connections never end
		  });
		
		  server.listen(8000);
		
		  process.on('message', (msg) => {
		    if (msg === 'shutdown') {
		      // Initiate graceful close of any connections to server
		    }
		  });
		}
		```
	**/
	function disconnect():Worker;
	/**
		This function returns `true` if the worker is connected to its primary via its
		IPC channel, `false` otherwise. A worker is connected to its primary after it
		has been created. It is disconnected after the `'disconnect'` event is emitted.
	**/
	function isConnected():Bool;
	/**
		This function returns `true` if the worker's process has terminated (either
		because of exiting or being signaled). Otherwise, it returns `false`.
		
		```js
		import cluster from 'node:cluster';
		import http from 'node:http';
		import { availableParallelism } from 'node:os';
		import process from 'node:process';
		
		const numCPUs = availableParallelism();
		
		if (cluster.isPrimary) {
		  console.log(`Primary ${process.pid} is running`);
		
		  // Fork workers.
		  for (let i = 0; i < numCPUs; i++) {
		    cluster.fork();
		  }
		
		  cluster.on('fork', (worker) => {
		    console.log('worker is dead:', worker.isDead());
		  });
		
		  cluster.on('exit', (worker, code, signal) => {
		    console.log('worker is dead:', worker.isDead());
		  });
		} else {
		  // Workers can share any TCP connection. In this case, it is an HTTP server.
		  http.createServer((req, res) => {
		    res.writeHead(200);
		    res.end(`Current process\n ${process.pid}`);
		    process.kill(process.pid);
		  }).listen(8000);
		}
		```
	**/
	function isDead():Bool;
	/**
		This property is `true` if the worker exited due to `.disconnect()`.
		If the worker exited any other way, it is `false`. If the
		worker has not exited, it is `undefined`.
		
		The boolean `worker.exitedAfterDisconnect` allows distinguishing between
		voluntary and accidental exit, the primary may choose not to respawn a worker
		based on this value.
		
		```js
		cluster.on('exit', (worker, code, signal) => {
		  if (worker.exitedAfterDisconnect === true) {
		    console.log('Oh, it was just voluntary – no need to worry');
		  }
		});
		
		// kill worker
		worker.kill();
		```
	**/
	var exitedAfterDisconnect : Bool;
	/**
		events.EventEmitter
		  1. disconnect
		  2. error
		  3. exit
		  4. listening
		  5. message
		  6. online
	**/
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):Worker { })
	@:overload(function(event:String, listener:(address:Address) -> Void):Worker { })
	@:overload(function(event:String, listener:(message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker;
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
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, error:js.lib.Error):Bool { })
	@:overload(function(event:String, code:Float, signal:String):Bool { })
	@:overload(function(event:String, address:Address):Bool { })
	@:overload(function(event:String, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
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
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):Worker { })
	@:overload(function(event:String, listener:(address:Address) -> Void):Worker { })
	@:overload(function(event:String, listener:(message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker;
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
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):Worker { })
	@:overload(function(event:String, listener:(address:Address) -> Void):Worker { })
	@:overload(function(event:String, listener:(message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker;
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
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):Worker { })
	@:overload(function(event:String, listener:(address:Address) -> Void):Worker { })
	@:overload(function(event:String, listener:(message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker;
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
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):Worker { })
	@:overload(function(event:String, listener:(address:Address) -> Void):Worker { })
	@:overload(function(event:String, listener:(message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker;
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