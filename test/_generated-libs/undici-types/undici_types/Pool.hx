package undici_types;

@:jsRequire("undici-types", "Pool") extern class Pool extends Dispatcher {
	function new(url:ts.AnyOf2<String, node.url.URL>, ?options:undici_types.pool.Options);
	/**
		`true` after `pool.close()` has been called.
	**/
	var closed : Bool;
	/**
		`true` after `pool.destroyed()` has been called or `pool.close()` has been called and the pool shutdown has completed.
	**/
	var destroyed : Bool;
	/**
		Aggregate stats for a Pool.
	**/
	final stats : PoolStats;
	/**
		Starts two-way communications with the requested resource.
	**/
	@:overload(function(options:{ /** Default: `null` **/ @:optional var signal : Any; var path : String; /** This argument parameter is passed through to `ConnectData` **/ @:optional var opaque : Any; /** Default: `null` **/ @:optional var headers : ts.AnyOf2<Array<String>, undici_types.header.IncomingHttpHeaders>; /** Default: 0 **/ @:optional var maxRedirections : Float; /** Default: false **/ @:optional var redirectionLimitReached : Bool; /** Default: `null` **/ @:optional var responseHeader : String; }, callback:(err:Null<js.lib.Error>, data:undici_types.dispatcher.ConnectData) -> Void):Void { })
	function connect(options:{ /** Default: `null` **/ @:optional var signal : Any; var path : String; /** This argument parameter is passed through to `ConnectData` **/ @:optional var opaque : Any; /** Default: `null` **/ @:optional var headers : ts.AnyOf2<Array<String>, undici_types.header.IncomingHttpHeaders>; /** Default: 0 **/ @:optional var maxRedirections : Float; /** Default: false **/ @:optional var redirectionLimitReached : Bool; /** Default: `null` **/ @:optional var responseHeader : String; }):js.lib.Promise<undici_types.dispatcher.ConnectData>;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Pool { })
	function on(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Pool;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Pool { })
	function once(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Pool;
	/**
		Alias for `emitter.removeListener()`.
	**/
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Pool { })
	function off(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Pool;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Pool { })
	function addListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Pool;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Pool { })
	function removeListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Pool;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Pool { })
	function prependListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Pool;
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
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>, error:undici_types.errors.UndiciError) -> Void):Pool { })
	@:overload(function(eventName:String, callback:(origin:node.url.URL) -> Void):Pool { })
	function prependOnceListener(eventName:String, callback:(origin:node.url.URL, targets:haxe.ds.ReadOnlyArray<Dispatcher>) -> Void):Pool;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Pool;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Pool;
	static var prototype : Pool;
}