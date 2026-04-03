package node.readline;

/**
	Instances of the `readline.Interface` class are constructed using the `readline.createInterface()` method. Every instance is associated with a
	single `input` [Readable](https://nodejs.org/docs/https://nodejs.org/docs/latest-v20.x/api/stream.html#readable-streams) stream and a single `output` [Writable](https://nodejs.org/docs/https://nodejs.org/docs/latest-v20.x/api/stream.html#writable-streams) stream.
	The `output` stream is used to print prompts for user input that arrives on,
	and is read from, the `input` stream.
**/
@:jsRequire("readline", "Interface") extern class Interface extends node.Events<Interface> {
	/**
		NOTE: According to the documentation:
		
		> Instances of the `readline.Interface` class are constructed using the
		> `readline.createInterface()` method.
	**/
	@:overload(function(options:ReadLineOptions):Interface { })
	function new(input:global.nodejs.ReadableStream, ?output:global.nodejs.WritableStream, ?completer:ts.AnyOf2<Completer, AsyncCompleter>, ?terminal:Bool);
	final terminal : Bool;
	/**
		The current input data being processed by node.
		
		This can be used when collecting input from a TTY stream to retrieve the
		current value that has been processed thus far, prior to the `line` event
		being emitted. Once the `line` event has been emitted, this property will
		be an empty string.
		
		Be aware that modifying the value during the instance runtime may have
		unintended consequences if `rl.cursor` is not also controlled.
		
		**If not using a TTY stream for input, use the `'line'` event.**
		
		One possible use case would be as follows:
		
		```js
		const values = ['lorem ipsum', 'dolor sit amet'];
		const rl = readline.createInterface(process.stdin);
		const showResults = debounce(() => {
		  console.log(
		    '\n',
		    values.filter((val) => val.startsWith(rl.line)).join(' '),
		  );
		}, 300);
		process.stdin.on('keypress', (c, k) => {
		  showResults();
		});
		```
	**/
	final line : String;
	/**
		The cursor position relative to `rl.line`.
		
		This will track where the current cursor lands in the input string, when
		reading input from a TTY stream. The position of cursor determines the
		portion of the input string that will be modified as input is processed,
		as well as the column where the terminal caret will be rendered.
	**/
	final cursor : Float;
	/**
		The `rl.getPrompt()` method returns the current prompt used by `rl.prompt()`.
	**/
	function getPrompt():String;
	/**
		The `rl.setPrompt()` method sets the prompt that will be written to `output` whenever `rl.prompt()` is called.
	**/
	function setPrompt(prompt:String):Void;
	/**
		The `rl.prompt()` method writes the `Interface` instances configured`prompt` to a new line in `output` in order to provide a user with a new
		location at which to provide input.
		
		When called, `rl.prompt()` will resume the `input` stream if it has been
		paused.
		
		If the `Interface` was created with `output` set to `null` or `undefined` the prompt is not written.
	**/
	function prompt(?preserveCursor:Bool):Void;
	/**
		The `rl.question()` method displays the `query` by writing it to the `output`,
		waits for user input to be provided on `input`, then invokes the `callback` function passing the provided input as the first argument.
		
		When called, `rl.question()` will resume the `input` stream if it has been
		paused.
		
		If the `Interface` was created with `output` set to `null` or `undefined` the `query` is not written.
		
		The `callback` function passed to `rl.question()` does not follow the typical
		pattern of accepting an `Error` object or `null` as the first argument.
		The `callback` is called with the provided answer as the only argument.
		
		An error will be thrown if calling `rl.question()` after `rl.close()`.
		
		Example usage:
		
		```js
		rl.question('What is your favorite food? ', (answer) => {
		  console.log(`Oh, so your favorite food is ${answer}`);
		});
		```
		
		Using an `AbortController` to cancel a question.
		
		```js
		const ac = new AbortController();
		const signal = ac.signal;
		
		rl.question('What is your favorite food? ', { signal }, (answer) => {
		  console.log(`Oh, so your favorite food is ${answer}`);
		});
		
		signal.addEventListener('abort', () => {
		  console.log('The food question timed out');
		}, { once: true });
		
		setTimeout(() => ac.abort(), 10000);
		```
	**/
	@:overload(function(query:String, options:node.events.eventemitter.Abortable, callback:(answer:String) -> Void):Void { })
	function question(query:String, callback:(answer:String) -> Void):Void;
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
		The `rl.close()` method closes the `Interface` instance and
		relinquishes control over the `input` and `output` streams. When called,
		the `'close'` event will be emitted.
		
		Calling `rl.close()` does not immediately stop other events (including `'line'`)
		from being emitted by the `Interface` instance.
	**/
	function close():Void;
	/**
		The `rl.write()` method will write either `data` or a key sequence identified
		by `key` to the `output`. The `key` argument is supported only if `output` is
		a `TTY` text terminal. See `TTY keybindings` for a list of key
		combinations.
		
		If `key` is specified, `data` is ignored.
		
		When called, `rl.write()` will resume the `input` stream if it has been
		paused.
		
		If the `Interface` was created with `output` set to `null` or `undefined` the `data` and `key` are not written.
		
		```js
		rl.write('Delete this!');
		// Simulate Ctrl+U to delete the line written previously
		rl.write(null, { ctrl: true, name: 'u' });
		```
		
		The `rl.write()` method will write the data to the `readline` `Interface`'s `input` _as if it were provided by the user_.
	**/
	@:overload(function(data:Null<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, key:Key):Void { })
	function write(data:ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, ?key:Key):Void;
	/**
		Returns the real position of the cursor in relation to the input
		prompt + string. Long input (wrapping) strings, as well as multiple
		line prompts are included in the calculations.
	**/
	function getCursorPos():CursorPos;
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
	@:overload(function(event:String, input:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, history:Array<String>):Bool { })
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