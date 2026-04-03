package node.cluster;

typedef Cluster = {
	function disconnect(?callback:() -> Void):Void;
	/**
		Spawn a new worker process.
		
		This can only be called from the primary process.
	**/
	function fork(?env:Dynamic):Worker;
	final isMaster : Bool;
	/**
		True if the process is a primary. This is determined by the `process.env.NODE_UNIQUE_ID`. If `process.env.NODE_UNIQUE_ID`
		is undefined, then `isPrimary` is `true`.
	**/
	final isPrimary : Bool;
	/**
		True if the process is not a primary (it is the negation of `cluster.isPrimary`).
	**/
	final isWorker : Bool;
	/**
		The scheduling policy, either `cluster.SCHED_RR` for round-robin or `cluster.SCHED_NONE` to leave it to the operating system. This is a
		global setting and effectively frozen once either the first worker is spawned, or [`.setupPrimary()`](https://nodejs.org/docs/latest-v20.x/api/cluster.html#clustersetupprimarysettings)
		is called, whichever comes first.
		
		`SCHED_RR` is the default on all operating systems except Windows. Windows will change to `SCHED_RR` once libuv is able to effectively distribute
		IOCP handles without incurring a large performance hit.
		
		`cluster.schedulingPolicy` can also be set through the `NODE_CLUSTER_SCHED_POLICY` environment variable. Valid values are `'rr'` and `'none'`.
	**/
	var schedulingPolicy : Float;
	/**
		After calling [`.setupPrimary()`](https://nodejs.org/docs/latest-v20.x/api/cluster.html#clustersetupprimarysettings)
		(or [`.fork()`](https://nodejs.org/docs/latest-v20.x/api/cluster.html#clusterforkenv)) this settings object will contain
		the settings, including the default values.
		
		This object is not intended to be changed or set manually.
	**/
	final settings : ClusterSettings;
	function setupMaster(?settings:ClusterSettings):Void;
	/**
		`setupPrimary` is used to change the default 'fork' behavior. Once called, the settings will be present in `cluster.settings`.
		
		Any settings changes only affect future calls to [`.fork()`](https://nodejs.org/docs/latest-v20.x/api/cluster.html#clusterforkenv)
		and have no effect on workers that are already running.
		
		The only attribute of a worker that cannot be set via `.setupPrimary()` is the `env` passed to
		[`.fork()`](https://nodejs.org/docs/latest-v20.x/api/cluster.html#clusterforkenv).
		
		The defaults above apply to the first call only; the defaults for later calls are the current values at the time of
		`cluster.setupPrimary()` is called.
		
		```js
		import cluster from 'node:cluster';
		
		cluster.setupPrimary({
		  exec: 'worker.js',
		  args: ['--use', 'https'],
		  silent: true,
		});
		cluster.fork(); // https worker
		cluster.setupPrimary({
		  exec: 'worker.js',
		  args: ['--use', 'http'],
		});
		cluster.fork(); // http worker
		```
		
		This can only be called from the primary process.
	**/
	function setupPrimary(?settings:ClusterSettings):Void;
	/**
		A reference to the current worker object. Not available in the primary process.
		
		```js
		import cluster from 'node:cluster';
		
		if (cluster.isPrimary) {
		  console.log('I am primary');
		  cluster.fork();
		  cluster.fork();
		} else if (cluster.isWorker) {
		  console.log(`I am worker #${cluster.worker.id}`);
		}
		```
	**/
	@:optional
	final worker : Worker;
	/**
		A hash that stores the active worker objects, keyed by `id` field. This makes it easy to loop through all the workers. It is only available in the primary process.
		
		A worker is removed from `cluster.workers` after the worker has disconnected _and_ exited. The order between these two events cannot be determined in advance. However, it
		is guaranteed that the removal from the `cluster.workers` list happens before the last `'disconnect'` or `'exit'` event is emitted.
		
		```js
		import cluster from 'node:cluster';
		
		for (const worker of Object.values(cluster.workers)) {
		  worker.send('big announcement to all workers');
		}
		```
	**/
	@:optional
	final workers : global.nodejs.Dict<Worker>;
	final SCHED_NONE : Float;
	final SCHED_RR : Float;
	/**
		events.EventEmitter
		  1. disconnect
		  2. exit
		  3. fork
		  4. listening
		  5. message
		  6. online
		  7. setup
	**/
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
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
	@:overload(function(event:String, worker:Worker):Bool { })
	@:overload(function(event:String, worker:Worker, code:Float, signal:String):Bool { })
	@:overload(function(event:String, worker:Worker):Bool { })
	@:overload(function(event:String, worker:Worker, address:Address):Bool { })
	@:overload(function(event:String, worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>):Bool { })
	@:overload(function(event:String, worker:Worker):Bool { })
	@:overload(function(event:String, settings:ClusterSettings):Bool { })
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
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
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
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
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
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
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
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Cluster;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Cluster;
	/**
		Returns the current max listener value for the `EventEmitter` which is either
		set by `emitter.setMaxListeners(n)` or defaults to
		{@link
		EventEmitter.defaultMaxListeners
		}
		.
	**/
	function getMaxListeners():Float;
	/**
		Returns a copy of the array of listeners for the event named `eventName`.
		
		```js
		server.on('connection', (stream) => {
		  console.log('someone connected!');
		});
		console.log(util.inspect(server.listeners('connection')));
		// Prints: [ [Function] ]
		```
	**/
	function listeners<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	/**
		Returns a copy of the array of listeners for the event named `eventName`,
		including any wrappers (such as those created by `.once()`).
		
		```js
		import { EventEmitter } from 'node:events';
		const emitter = new EventEmitter();
		emitter.once('log', () => console.log('log once'));
		
		// Returns a new Array with a function `onceWrapper` which has a property
		// `listener` which contains the original listener bound above
		const listeners = emitter.rawListeners('log');
		const logFnWrapper = listeners[0];
		
		// Logs "log once" to the console and does not unbind the `once` event
		logFnWrapper.listener();
		
		// Logs "log once" to the console and removes the listener
		logFnWrapper();
		
		emitter.on('log', () => console.log('log persistently'));
		// Will return a new Array with a single function bound by `.on()` above
		const newListeners = emitter.rawListeners('log');
		
		// Logs "log persistently" twice
		newListeners[0]();
		emitter.emit('log');
		```
	**/
	function rawListeners<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	/**
		Returns the number of listeners listening for the event named `eventName`.
		If `listener` is provided, it will return how many times the listener is found
		in the list of the listeners of the event.
	**/
	function listenerCount<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, ?listener:haxe.Constraints.Function):Float;
	/**
		Returns an array listing the events for which the emitter has registered
		listeners. The values in the array are strings or `Symbol`s.
		
		```js
		import { EventEmitter } from 'node:events';
		
		const myEE = new EventEmitter();
		myEE.on('foo', () => {});
		myEE.on('bar', () => {});
		
		const sym = Symbol('symbol');
		myEE.on(sym, () => {});
		
		console.log(myEE.eventNames());
		// Prints: [ 'foo', 'bar', Symbol(symbol) ]
		```
	**/
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};