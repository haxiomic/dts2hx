package node.readline.promises;

/**
	Instances of the `readlinePromises.Interface` class are constructed using the `readlinePromises.createInterface()` method. Every instance is associated with a
	single `input` `Readable` stream and a single `output` `Writable` stream.
	The `output` stream is used to print prompts for user input that arrives on,
	and is read from, the `input` stream.
**/
@:jsRequire("readline", "promises.Interface") extern class Interface extends node.readline.Interface {
	/**
		The `rl.question()` method displays the `query` by writing it to the `output`,
		waits for user input to be provided on `input`, then invokes the `callback` function passing the provided input as the first argument.
		
		When called, `rl.question()` will resume the `input` stream if it has been
		paused.
		
		If the `Interface` was created with `output` set to `null` or `undefined` the `query` is not written.
		
		If the question is called after `rl.close()`, it returns a rejected promise.
		
		Example usage:
		
		```js
		const answer = await rl.question('What is your favorite food? ');
		console.log(`Oh, so your favorite food is ${answer}`);
		```
		
		Using an `AbortSignal` to cancel a question.
		
		```js
		const signal = AbortSignal.timeout(10_000);
		
		signal.addEventListener('abort', () => {
		  console.log('The food question timed out');
		}, { once: true });
		
		const answer = await rl.question('What is your favorite food? ', { signal });
		console.log(`Oh, so your favorite food is ${answer}`);
		```
	**/
	@:overload(function(query:String, options:node.events.eventemitter.Abortable):js.lib.Promise<String> { })
	function question(query:String):js.lib.Promise<String>;
	/**
		The `rl.pause()` method pauses the `input` stream, allowing it to be resumed
		later if necessary.
		
		Calling `rl.pause()` does not immediately pause other events (including `'line'`) from being emitted by the `Interface` instance.
	**/
	function pause():Interface;
	/**
		The `rl.resume()` method resumes the `input` stream if it has been paused.
	**/
	function resume():Interface;
	/**
		events.EventEmitter
		1. close
		2. line
		3. pause
		4. resume
		5. SIGCONT
		6. SIGINT
		7. SIGTSTP
		8. history
	**/
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(history:Array<String>) -> Void):Interface { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
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
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(history:Array<String>) -> Void):Interface { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
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
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(history:Array<String>) -> Void):Interface { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
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
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(history:Array<String>) -> Void):Interface { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
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
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(history:Array<String>) -> Void):Interface { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Interface;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Interface;
	static var prototype : Interface;
}