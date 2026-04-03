package node.domain;

/**
	The `Domain` class encapsulates the functionality of routing errors and
	uncaught exceptions to the active `Domain` object.
	
	To handle the errors that it catches, listen to its `'error'` event.
**/
@:jsRequire("domain", "Domain") extern class Domain extends node.Events<Domain> {
	/**
		An array of timers and event emitters that have been explicitly added
		to the domain.
	**/
	var members : Array<ts.AnyOf2<node.Events<Domain>, global.nodejs.Timer>>;
	/**
		The `enter()` method is plumbing used by the `run()`, `bind()`, and `intercept()` methods to set the active domain. It sets `domain.active` and `process.domain` to the domain, and implicitly
		pushes the domain onto the domain
		stack managed by the domain module (see
		{@link
		exit
		}
		for details on the
		domain stack). The call to `enter()` delimits the beginning of a chain of
		asynchronous calls and I/O operations bound to a domain.
		
		Calling `enter()` changes only the active domain, and does not alter the domain
		itself. `enter()` and `exit()` can be called an arbitrary number of times on a
		single domain.
	**/
	function enter():Void;
	/**
		The `exit()` method exits the current domain, popping it off the domain stack.
		Any time execution is going to switch to the context of a different chain of
		asynchronous calls, it's important to ensure that the current domain is exited.
		The call to `exit()` delimits either the end of or an interruption to the chain
		of asynchronous calls and I/O operations bound to a domain.
		
		If there are multiple, nested domains bound to the current execution context, `exit()` will exit any domains nested within this domain.
		
		Calling `exit()` changes only the active domain, and does not alter the domain
		itself. `enter()` and `exit()` can be called an arbitrary number of times on a
		single domain.
	**/
	function exit():Void;
	/**
		Run the supplied function in the context of the domain, implicitly
		binding all event emitters, timers, and low-level requests that are
		created in that context. Optionally, arguments can be passed to
		the function.
		
		This is the most basic way to use a domain.
		
		```js
		import domain from 'node:domain';
		import fs from 'node:fs';
		const d = domain.create();
		d.on('error', (er) => {
		  console.error('Caught error!', er);
		});
		d.run(() => {
		  process.nextTick(() => {
		    setTimeout(() => { // Simulating some various async stuff
		      fs.open('non-existent file', 'r', (er, fd) => {
		        if (er) throw er;
		        // proceed...
		      });
		    }, 100);
		  });
		});
		```
		
		In this example, the `d.on('error')` handler will be triggered, rather
		than crashing the program.
	**/
	function run<T>(fn:(args:haxe.extern.Rest<Dynamic>) -> T, args:haxe.extern.Rest<Dynamic>):T;
	/**
		Explicitly adds an emitter to the domain. If any event handlers called by
		the emitter throw an error, or if the emitter emits an `'error'` event, it
		will be routed to the domain's `'error'` event, just like with implicit
		binding.
		
		This also works with timers that are returned from `setInterval()` and `setTimeout()`. If their callback function throws, it will be caught by
		the domain `'error'` handler.
		
		If the Timer or `EventEmitter` was already bound to a domain, it is removed
		from that one, and bound to this one instead.
	**/
	function add(emitter:ts.AnyOf2<node.Events<Domain>, global.nodejs.Timer>):Void;
	/**
		The opposite of
		{@link
		add
		}
		. Removes domain handling from the
		specified emitter.
	**/
	function remove(emitter:ts.AnyOf2<node.Events<Domain>, global.nodejs.Timer>):Void;
	/**
		The returned function will be a wrapper around the supplied callback
		function. When the returned function is called, any errors that are
		thrown will be routed to the domain's `'error'` event.
		
		```js
		const d = domain.create();
		
		function readSomeFile(filename, cb) {
		  fs.readFile(filename, 'utf8', d.bind((er, data) => {
		    // If this throws, it will also be passed to the domain.
		    return cb(er, data ? JSON.parse(data) : null);
		  }));
		}
		
		d.on('error', (er) => {
		  // An error occurred somewhere. If we throw it now, it will crash the program
		  // with the normal line number and stack message.
		});
		```
	**/
	function bind<T:(haxe.Constraints.Function)>(callback:T):T;
	/**
		This method is almost identical to
		{@link
		bind
		}
		. However, in
		addition to catching thrown errors, it will also intercept `Error` objects sent as the first argument to the function.
		
		In this way, the common `if (err) return callback(err);` pattern can be replaced
		with a single error handler in a single place.
		
		```js
		const d = domain.create();
		
		function readSomeFile(filename, cb) {
		  fs.readFile(filename, 'utf8', d.intercept((data) => {
		    // Note, the first argument is never passed to the
		    // callback since it is assumed to be the 'Error' argument
		    // and thus intercepted by the domain.
		
		    // If this throws, it will also be passed to the domain
		    // so the error-handling logic can be moved to the 'error'
		    // event on the domain instead of being repeated throughout
		    // the program.
		    return cb(null, JSON.parse(data));
		  }));
		}
		
		d.on('error', (er) => {
		  // An error occurred somewhere. If we throw it now, it will crash the program
		  // with the normal line number and stack message.
		});
		```
	**/
	function intercept<T:(haxe.Constraints.Function)>(callback:T):T;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
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
	function on<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
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
	function once<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Domain;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Domain;
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
	function prependListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
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
	function prependOnceListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	static var prototype : Domain;
}