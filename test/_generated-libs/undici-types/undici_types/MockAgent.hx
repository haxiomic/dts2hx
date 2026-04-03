package undici_types;

/**
	A mocked Agent class that implements the Agent API. It allows one to intercept HTTP requests made through undici and return mocked responses instead.
**/
@:jsRequire("undici-types", "MockAgent") extern class MockAgent<TMockAgentOptions:(undici_types.mockagent.Options)> extends Dispatcher {
	function new(?options:undici_types.mockagent.Options);
	/**
		Creates and retrieves mock Dispatcher instances which can then be used to intercept HTTP requests. If the number of connections on the mock agent is set to 1, a MockClient instance is returned. Otherwise a MockPool instance is returned.
	**/
	@:overload(function<TInterceptable:(Interceptable)>(origin:js.lib.RegExp):TInterceptable { })
	@:overload(function<TInterceptable:(Interceptable)>(origin:(origin:String) -> Bool):TInterceptable { })
	function get<TInterceptable:(Interceptable)>(origin:String):TInterceptable;
	/**
		Dispatches a mocked request.
	**/
	function dispatch(options:undici_types.agent.DispatchOptions, handler:undici_types.dispatcher.DispatchHandlers):Bool;
	/**
		Closes the mock agent and waits for registered mock pools and clients to also close before resolving.
	**/
	function close():js.lib.Promise<ts.Undefined>;
	/**
		Disables mocking in MockAgent.
	**/
	function deactivate():Void;
	/**
		Enables mocking in a MockAgent instance. When instantiated, a MockAgent is automatically activated. Therefore, this method is only effective after `MockAgent.deactivate` has been called.
	**/
	function activate():Void;
	/**
		Define host matchers so only matching requests that aren't intercepted by the mock dispatchers will be attempted.
	**/
	@:overload(function(host:String):Void { })
	@:overload(function(host:js.lib.RegExp):Void { })
	@:overload(function(host:(host:String) -> Bool):Void { })
	function enableNetConnect():Void;
	/**
		Causes all requests to throw when requests are not matched in a MockAgent intercept.
	**/
	function disableNetConnect():Void;
	function pendingInterceptors():Array<PendingInterceptor>;
	function assertNoPendingInterceptors(?options:{ @:optional var pendingInterceptorsFormatter : PendingInterceptorsFormatter; }):Void;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):MockAgent<TMockAgentOptions> { })
	function on(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):MockAgent<TMockAgentOptions>;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):MockAgent<TMockAgentOptions> { })
	function once(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):MockAgent<TMockAgentOptions>;
	/**
		Alias for `emitter.removeListener()`.
	**/
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):MockAgent<TMockAgentOptions> { })
	function off(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):MockAgent<TMockAgentOptions>;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):MockAgent<TMockAgentOptions> { })
	function addListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):MockAgent<TMockAgentOptions>;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):MockAgent<TMockAgentOptions> { })
	function removeListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):MockAgent<TMockAgentOptions>;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):MockAgent<TMockAgentOptions> { })
	function prependListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):MockAgent<TMockAgentOptions>;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):MockAgent<TMockAgentOptions> { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):MockAgent<TMockAgentOptions> { })
	function prependOnceListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):MockAgent<TMockAgentOptions>;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):MockAgent<TMockAgentOptions>;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):MockAgent<TMockAgentOptions>;
	static var prototype : MockAgent<Dynamic>;
}