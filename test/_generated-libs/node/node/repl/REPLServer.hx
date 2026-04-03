package node.repl;

/**
	Instances of `repl.REPLServer` are created using the
	{@link
	start
	}
	method
	or directly using the JavaScript `new` keyword.
	
	```js
	import repl from 'node:repl';
	
	const options = { useColors: true };
	
	const firstInstance = repl.start(options);
	const secondInstance = new repl.REPLServer(options);
	```
**/
@:jsRequire("repl", "REPLServer") extern class REPLServer extends node.readline.Interface {
	/**
		NOTE: According to the documentation:
		
		> Instances of `repl.REPLServer` are created using the `repl.start()` method and
		> _should not_ be created directly using the JavaScript `new` keyword.
		
		`REPLServer` cannot be subclassed due to implementation specifics in NodeJS.
	**/
	private function new();
	/**
		The `vm.Context` provided to the `eval` function to be used for JavaScript
		evaluation.
	**/
	final context : node.vm.Context;
	final inputStream : global.nodejs.ReadableStream;
	final outputStream : global.nodejs.WritableStream;
	/**
		The `Readable` stream from which REPL input will be read.
	**/
	final input : global.nodejs.ReadableStream;
	/**
		The `Writable` stream to which REPL output will be written.
	**/
	final output : global.nodejs.WritableStream;
	/**
		The commands registered via `replServer.defineCommand()`.
	**/
	final commands : global.nodejs.ReadOnlyDict<REPLCommand>;
	/**
		A value indicating whether the REPL is currently in "editor mode".
	**/
	final editorMode : Bool;
	/**
		A value indicating whether the `_` variable has been assigned.
	**/
	final underscoreAssigned : Bool;
	/**
		The last evaluation result from the REPL (assigned to the `_` variable inside of the REPL).
	**/
	final last : Dynamic;
	/**
		A value indicating whether the `_error` variable has been assigned.
	**/
	final underscoreErrAssigned : Bool;
	/**
		The last error raised inside the REPL (assigned to the `_error` variable inside of the REPL).
	**/
	final lastError : Dynamic;
	/**
		Specified in the REPL options, this is the function to be used when evaluating each
		given line of input. If not specified in the REPL options, this is an async wrapper
		for the JavaScript `eval()` function.
	**/
	function eval(evalCmd:String, context:node.vm.Context, file:String, cb:(err:Null<js.lib.Error>, result:Dynamic) -> Void):Void;
	/**
		Specified in the REPL options, this is a value indicating whether the default
		`writer` function should include ANSI color styling to REPL output.
	**/
	final useColors : Bool;
	/**
		Specified in the REPL options, this is a value indicating whether the default `eval`
		function will use the JavaScript `global` as the context as opposed to creating a new
		separate context for the REPL instance.
	**/
	final useGlobal : Bool;
	/**
		Specified in the REPL options, this is a value indicating whether the default `writer`
		function should output the result of a command if it evaluates to `undefined`.
	**/
	final ignoreUndefined : Bool;
	/**
		Specified in the REPL options, this is the function to invoke to format the output of
		each command before writing to `outputStream`. If not specified in the REPL options,
		this will be a wrapper for `util.inspect`.
	**/
	function writer(obj:Dynamic):String;
	/**
		Specified in the REPL options, this is the function to use for custom Tab auto-completion.
	**/
	function completer(line:String, callback:ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, result:node.readline.CompleterResult) -> Void>):node.readline.CompleterResult;
	/**
		Specified in the REPL options, this is a flag that specifies whether the default `eval`
		function should execute all JavaScript commands in strict mode or default (sloppy) mode.
		Possible values are:
		- `repl.REPL_MODE_SLOPPY` - evaluates expressions in sloppy mode.
		- `repl.REPL_MODE_STRICT` - evaluates expressions in strict mode. This is equivalent to
		   prefacing every repl statement with `'use strict'`.
	**/
	final replMode : js.lib.Symbol;
	/**
		The `replServer.defineCommand()` method is used to add new `.`\-prefixed commands
		to the REPL instance. Such commands are invoked by typing a `.` followed by the `keyword`. The `cmd` is either a `Function` or an `Object` with the following
		properties:
		
		The following example shows two new commands added to the REPL instance:
		
		```js
		import repl from 'node:repl';
		
		const replServer = repl.start({ prompt: '> ' });
		replServer.defineCommand('sayhello', {
		  help: 'Say hello',
		  action(name) {
		    this.clearBufferedCommand();
		    console.log(`Hello, ${name}!`);
		    this.displayPrompt();
		  },
		});
		replServer.defineCommand('saybye', function saybye() {
		  console.log('Goodbye!');
		  this.close();
		});
		```
		
		The new commands can then be used from within the REPL instance:
		
		```console
		> .sayhello Node.js User
		Hello, Node.js User!
		> .saybye
		Goodbye!
		```
	**/
	function defineCommand(keyword:String, cmd:ts.AnyOf2<REPLCommand, REPLCommandAction>):Void;
	/**
		The `replServer.displayPrompt()` method readies the REPL instance for input
		from the user, printing the configured `prompt` to a new line in the `output` and resuming the `input` to accept new input.
		
		When multi-line input is being entered, an ellipsis is printed rather than the
		'prompt'.
		
		When `preserveCursor` is `true`, the cursor placement will not be reset to `0`.
		
		The `replServer.displayPrompt` method is primarily intended to be called from
		within the action function for commands registered using the `replServer.defineCommand()` method.
	**/
	function displayPrompt(?preserveCursor:Bool):Void;
	/**
		The `replServer.clearBufferedCommand()` method clears any command that has been
		buffered but not yet executed. This method is primarily intended to be
		called from within the action function for commands registered using the `replServer.defineCommand()` method.
	**/
	function clearBufferedCommand():Void;
	/**
		Initializes a history log file for the REPL instance. When executing the
		Node.js binary and using the command-line REPL, a history file is initialized
		by default. However, this is not the case when creating a REPL
		programmatically. Use this method to initialize a history log file when working
		with REPL instances programmatically.
	**/
	function setupHistory(path:String, callback:(err:Null<js.lib.Error>, repl:REPLServer) -> Void):Void;
	/**
		events.EventEmitter
		1. close - inherited from `readline.Interface`
		2. line - inherited from `readline.Interface`
		3. pause - inherited from `readline.Interface`
		4. resume - inherited from `readline.Interface`
		5. SIGCONT - inherited from `readline.Interface`
		6. SIGINT - inherited from `readline.Interface`
		7. SIGTSTP - inherited from `readline.Interface`
		8. exit
		9. reset
	**/
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(input:String) -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(context:node.vm.Context) -> Void):REPLServer { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
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
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, context:node.vm.Context):Bool { })
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
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(input:String) -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(context:node.vm.Context) -> Void):REPLServer { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
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
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(input:String) -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(context:node.vm.Context) -> Void):REPLServer { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
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
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(input:String) -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(context:node.vm.Context) -> Void):REPLServer { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
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
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(input:String) -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(context:node.vm.Context) -> Void):REPLServer { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
	/**
		The `rl.pause()` method pauses the `input` stream, allowing it to be resumed
		later if necessary.
		
		Calling `rl.pause()` does not immediately pause other events (including `'line'`) from being emitted by the `Interface` instance.
	**/
	function pause():REPLServer;
	/**
		The `rl.resume()` method resumes the `input` stream if it has been paused.
	**/
	function resume():REPLServer;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):REPLServer;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):REPLServer;
	static var prototype : REPLServer;
}