package undici_types;

/**
	Dispatcher is the core API used to dispatch requests.
**/
@:jsRequire("undici-types", "Dispatcher") extern class Dispatcher extends node.Events<Dispatcher> {
	/**
		Dispatches a request. This API is expected to evolve through semver-major versions and is less stable than the preceding higher level APIs. It is primarily intended for library developers who implement higher level APIs on top of this.
	**/
	function dispatch(options:undici_types.dispatcher.DispatchOptions, handler:undici_types.dispatcher.DispatchHandlers):Bool;
	/**
		Starts two-way communications with the requested resource.
	**/
	@:overload(function(options:undici_types.dispatcher.ConnectOptions, callback:(err:Null<js.lib.Error>, data:undici_types.dispatcher.ConnectData) -> Void):Void { })
	function connect(options:undici_types.dispatcher.ConnectOptions):js.lib.Promise<undici_types.dispatcher.ConnectData>;
	/**
		Compose a chain of dispatchers
	**/
	@:overload(function(dispatchers:haxe.extern.Rest<undici_types.dispatcher.DispatcherComposeInterceptor>):undici_types.dispatcher.ComposedDispatcher { })
	function compose(dispatchers:Array<undici_types.dispatcher.DispatcherComposeInterceptor>):undici_types.dispatcher.ComposedDispatcher;
	/**
		Performs an HTTP request.
	**/
	@:overload(function(options:undici_types.dispatcher.RequestOptions, callback:(err:Null<js.lib.Error>, data:undici_types.dispatcher.ResponseData) -> Void):Void { })
	function request(options:undici_types.dispatcher.RequestOptions):js.lib.Promise<undici_types.dispatcher.ResponseData>;
	/**
		For easy use with `stream.pipeline`.
	**/
	function pipeline(options:undici_types.dispatcher.PipelineOptions, handler:undici_types.dispatcher.PipelineHandler):node.stream.stream.Duplex;
	/**
		A faster version of `Dispatcher.request`.
	**/
	@:overload(function(options:undici_types.dispatcher.RequestOptions, factory:undici_types.dispatcher.StreamFactory, callback:(err:Null<js.lib.Error>, data:undici_types.dispatcher.StreamData) -> Void):Void { })
	function stream(options:undici_types.dispatcher.RequestOptions, factory:undici_types.dispatcher.StreamFactory):js.lib.Promise<undici_types.dispatcher.StreamData>;
	/**
		Upgrade to a different protocol.
	**/
	@:overload(function(options:undici_types.dispatcher.UpgradeOptions, callback:(err:Null<js.lib.Error>, data:undici_types.dispatcher.UpgradeData) -> Void):Void { })
	function upgrade(options:undici_types.dispatcher.UpgradeOptions):js.lib.Promise<undici_types.dispatcher.UpgradeData>;
	/**
		Closes the client and gracefully waits for enqueued requests to complete before invoking the callback (or returning a promise if no callback is provided).
	**/
	@:overload(function(callback:() -> Void):Void { })
	function close():js.lib.Promise<ts.Undefined>;
	/**
		Destroy the client abruptly with the given err. All the pending and running requests will be asynchronously aborted and error. Waits until socket is closed before invoking the callback (or returning a promise if no callback is provided). Since this operation is asynchronously dispatched there might still be some progress on dispatched requests.
	**/
	@:overload(function(err:Null<js.lib.Error>):js.lib.Promise<ts.Undefined> { })
	@:overload(function(callback:() -> Void):Void { })
	@:overload(function(err:Null<js.lib.Error>, callback:() -> Void):Void { })
	function destroy():js.lib.Promise<ts.Undefined>;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Dispatcher { })
	function on(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Dispatcher;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Dispatcher { })
	function once(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Dispatcher;
	/**
		Alias for `emitter.removeListener()`.
	**/
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Dispatcher { })
	function off(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Dispatcher;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Dispatcher { })
	function addListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Dispatcher;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Dispatcher { })
	function removeListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Dispatcher;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Dispatcher { })
	function prependListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Dispatcher;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Dispatcher { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Dispatcher { })
	function prependOnceListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Dispatcher;
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
	@:overload(function(eventName:String):Array<(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void> { })
	@:overload(function(eventName:String):Array<(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void> { })
	@:overload(function(eventName:String):Array<(origin:node.url.URL) -> Void> { })
	function listeners(eventName:String):Array<(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void>;
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
	@:overload(function(eventName:String):Array<(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void> { })
	@:overload(function(eventName:String):Array<(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void> { })
	@:overload(function(eventName:String):Array<(origin:node.url.URL) -> Void> { })
	function rawListeners(eventName:String):Array<(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void>;
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
	@:overload(function(eventName:String, origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError):Bool { })
	@:overload(function(eventName:String, origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError):Bool { })
	@:overload(function(eventName:String, origin:node.url.URL):Bool { })
	function emit(eventName:String, origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>):Bool;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Dispatcher;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Dispatcher;
	static var prototype : Dispatcher;
}