package node.tty;

/**
	Represents the writable side of a TTY. In normal circumstances, `process.stdout` and `process.stderr` will be the only`tty.WriteStream` instances created for a Node.js process and there
	should be no reason to create additional instances.
**/
@:jsRequire("tty", "WriteStream") extern class WriteStream extends node.net.Socket {
	function new(fd:Float);
	/**
		events.EventEmitter
		  1. close
		  2. connect
		  3. connectionAttempt
		  4. connectionAttemptFailed
		  5. connectionAttemptTimeout
		  6. data
		  7. drain
		  8. end
		  9. error
		  10. lookup
		  11. ready
		  12. timeout
	**/
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
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
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
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
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
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
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
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
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	/**
		`writeStream.clearLine()` clears the current line of this `WriteStream` in a
		direction identified by `dir`.
	**/
	function clearLine(dir:Direction, ?callback:() -> Void):Bool;
	/**
		`writeStream.clearScreenDown()` clears this `WriteStream` from the current
		cursor down.
	**/
	function clearScreenDown(?callback:() -> Void):Bool;
	/**
		`writeStream.cursorTo()` moves this `WriteStream`'s cursor to the specified
		position.
	**/
	@:overload(function(x:Float, callback:() -> Void):Bool { })
	function cursorTo(x:Float, ?y:Float, ?callback:() -> Void):Bool;
	/**
		`writeStream.moveCursor()` moves this `WriteStream`'s cursor _relative_ to its
		current position.
	**/
	function moveCursor(dx:Float, dy:Float, ?callback:() -> Void):Bool;
	/**
		Returns:
		
		* `1` for 2,
		* `4` for 16,
		* `8` for 256,
		* `24` for 16,777,216 colors supported.
		
		Use this to determine what colors the terminal supports. Due to the nature of
		colors in terminals it is possible to either have false positives or false
		negatives. It depends on process information and the environment variables that
		may lie about what terminal is used.
		It is possible to pass in an `env` object to simulate the usage of a specific
		terminal. This can be useful to check how specific environment settings behave.
		
		To enforce a specific color support, use one of the below environment settings.
		
		* 2 colors: `FORCE_COLOR = 0` (Disables colors)
		* 16 colors: `FORCE_COLOR = 1`
		* 256 colors: `FORCE_COLOR = 2`
		* 16,777,216 colors: `FORCE_COLOR = 3`
		
		Disabling color support is also possible by using the `NO_COLOR` and `NODE_DISABLE_COLORS` environment variables.
	**/
	function getColorDepth(?env:Dynamic):Float;
	/**
		Returns `true` if the `writeStream` supports at least as many colors as provided
		in `count`. Minimum support is 2 (black and white).
		
		This has the same false positives and negatives as described in `writeStream.getColorDepth()`.
		
		```js
		process.stdout.hasColors();
		// Returns true or false depending on if `stdout` supports at least 16 colors.
		process.stdout.hasColors(256);
		// Returns true or false depending on if `stdout` supports at least 256 colors.
		process.stdout.hasColors({ TMUX: '1' });
		// Returns true.
		process.stdout.hasColors(2 ** 24, { TMUX: '1' });
		// Returns false (the environment setting pretends to support 2 ** 8 colors).
		```
	**/
	@:overload(function(?env:Dynamic):Bool { })
	@:overload(function(count:Float, ?env:Dynamic):Bool { })
	function hasColors(?count:Float):Bool;
	/**
		`writeStream.getWindowSize()` returns the size of the TTY
		corresponding to this `WriteStream`. The array is of the type `[numColumns, numRows]` where `numColumns` and `numRows` represent the number
		of columns and rows in the corresponding TTY.
	**/
	function getWindowSize():ts.Tuple2<Float, Float>;
	/**
		A `number` specifying the number of columns the TTY currently has. This property
		is updated whenever the `'resize'` event is emitted.
	**/
	var columns : Float;
	/**
		A `number` specifying the number of rows the TTY currently has. This property
		is updated whenever the `'resize'` event is emitted.
	**/
	var rows : Float;
	/**
		A `boolean` that is always `true`.
	**/
	var isTTY : Bool;
	/**
		Initiate a connection on a given socket.
		
		Possible signatures:
		
		* `socket.connect(options[, connectListener])`
		* `socket.connect(path[, connectListener])` for `IPC` connections.
		* `socket.connect(port[, host][, connectListener])` for TCP connections.
		* Returns: `net.Socket` The socket itself.
		
		This function is asynchronous. When the connection is established, the `'connect'` event will be emitted. If there is a problem connecting,
		instead of a `'connect'` event, an `'error'` event will be emitted with
		the error passed to the `'error'` listener.
		The last parameter `connectListener`, if supplied, will be added as a listener
		for the `'connect'` event **once**.
		
		This function should only be used for reconnecting a socket after`'close'` has been emitted or otherwise it may lead to undefined
		behavior.
	**/
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):WriteStream { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):WriteStream { })
	@:overload(function(path:String, ?connectionListener:() -> Void):WriteStream { })
	function connect(options:node.net.SocketConnectOpts, ?connectionListener:() -> Void):WriteStream;
	/**
		Set the encoding for the socket as a `Readable Stream`. See `readable.setEncoding()` for more information.
	**/
	function setEncoding(?encoding:global.nodejs.BufferEncoding):WriteStream;
	/**
		Pauses the reading of data. That is, `'data'` events will not be emitted.
		Useful to throttle back an upload.
	**/
	function pause():WriteStream;
	/**
		Close the TCP connection by sending an RST packet and destroy the stream.
		If this TCP socket is in connecting status, it will send an RST packet and destroy this TCP socket once it is connected.
		Otherwise, it will call `socket.destroy` with an `ERR_SOCKET_CLOSED` Error.
		If this is not a TCP socket (for example, a pipe), calling this method will immediately throw an `ERR_INVALID_HANDLE_TYPE` Error.
	**/
	function resetAndDestroy():WriteStream;
	/**
		Resumes reading after a call to `socket.pause()`.
	**/
	function resume():WriteStream;
	/**
		Sets the socket to timeout after `timeout` milliseconds of inactivity on
		the socket. By default `net.Socket` do not have a timeout.
		
		When an idle timeout is triggered the socket will receive a `'timeout'` event but the connection will not be severed. The user must manually call `socket.end()` or `socket.destroy()` to
		end the connection.
		
		```js
		socket.setTimeout(3000);
		socket.on('timeout', () => {
		  console.log('socket timeout');
		  socket.end();
		});
		```
		
		If `timeout` is 0, then the existing idle timeout is disabled.
		
		The optional `callback` parameter will be added as a one-time listener for the `'timeout'` event.
	**/
	function setTimeout(timeout:Float, ?callback:() -> Void):WriteStream;
	/**
		Enable/disable the use of Nagle's algorithm.
		
		When a TCP connection is created, it will have Nagle's algorithm enabled.
		
		Nagle's algorithm delays data before it is sent via the network. It attempts
		to optimize throughput at the expense of latency.
		
		Passing `true` for `noDelay` or not passing an argument will disable Nagle's
		algorithm for the socket. Passing `false` for `noDelay` will enable Nagle's
		algorithm.
	**/
	function setNoDelay(?noDelay:Bool):WriteStream;
	/**
		Enable/disable keep-alive functionality, and optionally set the initial
		delay before the first keepalive probe is sent on an idle socket.
		
		Set `initialDelay` (in milliseconds) to set the delay between the last
		data packet received and the first keepalive probe. Setting `0` for`initialDelay` will leave the value unchanged from the default
		(or previous) setting.
		
		Enabling the keep-alive functionality will set the following socket options:
		
		* `SO_KEEPALIVE=1`
		* `TCP_KEEPIDLE=initialDelay`
		* `TCP_KEEPCNT=10`
		* `TCP_KEEPINTVL=1`
	**/
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):WriteStream;
	/**
		Calling `unref()` on a socket will allow the program to exit if this is the only
		active socket in the event system. If the socket is already `unref`ed calling`unref()` again will have no effect.
	**/
	function unref():WriteStream;
	/**
		Opposite of `unref()`, calling `ref()` on a previously `unref`ed socket will _not_ let the program exit if it's the only socket left (the default behavior).
		If the socket is `ref`ed calling `ref` again will have no effect.
	**/
	function ref():WriteStream;
	/**
		Half-closes the socket. i.e., it sends a FIN packet. It is possible the
		server will still send some data.
		
		See `writable.end()` for further details.
	**/
	@:overload(function(buffer:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?callback:() -> Void):WriteStream { })
	@:overload(function(str:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?encoding:global.nodejs.BufferEncoding, ?callback:() -> Void):WriteStream { })
	function end(?callback:() -> Void):WriteStream;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream { })
	function removeListener(event:String, listener:() -> Void):WriteStream;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):WriteStream;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):WriteStream;
	/**
		The `readable.unpipe()` method detaches a `Writable` stream previously attached
		using the
		{@link
		pipe
		}
		method.
		
		If the `destination` is not specified, then _all_ pipes are detached.
		
		If the `destination` is specified, but no pipe is set up for it, then
		the method does nothing.
		
		```js
		import fs from 'node:fs';
		const readable = getReadableStreamSomehow();
		const writable = fs.createWriteStream('file.txt');
		// All the data from readable goes into 'file.txt',
		// but only for the first second.
		readable.pipe(writable);
		setTimeout(() => {
		  console.log('Stop writing to file.txt.');
		  readable.unpipe(writable);
		  console.log('Manually close the file stream.');
		  writable.end();
		}, 1000);
		```
	**/
	function unpipe(?destination:global.nodejs.WritableStream):WriteStream;
	/**
		Prior to Node.js 0.10, streams did not implement the entire `node:stream` module API as it is currently defined. (See `Compatibility` for more
		information.)
		
		When using an older Node.js library that emits `'data'` events and has a
		{@link
		pause
		}
		method that is advisory only, the `readable.wrap()` method can be used to create a `Readable`
		stream that uses
		the old stream as its data source.
		
		It will rarely be necessary to use `readable.wrap()` but the method has been
		provided as a convenience for interacting with older Node.js applications and
		libraries.
		
		```js
		import { OldReader } from './old-api-module.js';
		import { Readable } from 'node:stream';
		const oreader = new OldReader();
		const myReader = new Readable().wrap(oreader);
		
		myReader.on('readable', () => {
		  myReader.read(); // etc.
		});
		```
	**/
	function wrap(stream:global.nodejs.ReadableStream):WriteStream;
	/**
		Destroy the stream. Optionally emit an `'error'` event, and emit a `'close'` event (unless `emitClose` is set to `false`). After this call, the readable
		stream will release any internal resources and subsequent calls to `push()` will be ignored.
		
		Once `destroy()` has been called any further calls will be a no-op and no
		further errors except from `_destroy()` may be emitted as `'error'`.
		
		Implementors should not override this method, but instead implement `readable._destroy()`.
	**/
	function destroy(?error:js.lib.Error):WriteStream;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):WriteStream;
	static var prototype : WriteStream;
}