package node.net;

/**
	This class is an abstraction of a TCP socket or a streaming `IPC` endpoint
	(uses named pipes on Windows, and Unix domain sockets otherwise). It is also
	an `EventEmitter`.
	
	A `net.Socket` can be created by the user and used directly to interact with
	a server. For example, it is returned by
	{@link
	createConnection
	}
	,
	so the user can use it to talk to the server.
	
	It can also be created by Node.js and passed to the user when a connection
	is received. For example, it is passed to the listeners of a `'connection'` event emitted on a
	{@link
	Server
	}
	, so the user can use
	it to interact with the client.
**/
@:jsRequire("net", "Socket") extern class Socket extends node.stream.stream.Duplex {
	function new(?options:SocketConstructorOpts);
	/**
		Destroys the socket after all data is written. If the `finish` event was already emitted the socket is destroyed immediately.
		If the socket is still writable it implicitly calls `socket.end()`.
	**/
	function destroySoon():Void;
	/**
		Sends data on the socket. The second parameter specifies the encoding in the
		case of a string. It defaults to UTF8 encoding.
		
		Returns `true` if the entire data was flushed successfully to the kernel
		buffer. Returns `false` if all or part of the data was queued in user memory.`'drain'` will be emitted when the buffer is again free.
		
		The optional `callback` parameter will be executed when the data is finally
		written out, which may not be immediately.
		
		See `Writable` stream `write()` method for more
		information.
	**/
	@:overload(function(str:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?encoding:global.nodejs.BufferEncoding, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool { })
	function write(buffer:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool;
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
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):Socket { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):Socket { })
	@:overload(function(path:String, ?connectionListener:() -> Void):Socket { })
	function connect(options:SocketConnectOpts, ?connectionListener:() -> Void):Socket;
	/**
		Set the encoding for the socket as a `Readable Stream`. See `readable.setEncoding()` for more information.
	**/
	function setEncoding(?encoding:global.nodejs.BufferEncoding):Socket;
	/**
		Pauses the reading of data. That is, `'data'` events will not be emitted.
		Useful to throttle back an upload.
	**/
	function pause():Socket;
	/**
		Close the TCP connection by sending an RST packet and destroy the stream.
		If this TCP socket is in connecting status, it will send an RST packet and destroy this TCP socket once it is connected.
		Otherwise, it will call `socket.destroy` with an `ERR_SOCKET_CLOSED` Error.
		If this is not a TCP socket (for example, a pipe), calling this method will immediately throw an `ERR_INVALID_HANDLE_TYPE` Error.
	**/
	function resetAndDestroy():Socket;
	/**
		Resumes reading after a call to `socket.pause()`.
	**/
	function resume():Socket;
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
	function setTimeout(timeout:Float, ?callback:() -> Void):Socket;
	/**
		Enable/disable the use of Nagle's algorithm.
		
		When a TCP connection is created, it will have Nagle's algorithm enabled.
		
		Nagle's algorithm delays data before it is sent via the network. It attempts
		to optimize throughput at the expense of latency.
		
		Passing `true` for `noDelay` or not passing an argument will disable Nagle's
		algorithm for the socket. Passing `false` for `noDelay` will enable Nagle's
		algorithm.
	**/
	function setNoDelay(?noDelay:Bool):Socket;
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
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):Socket;
	/**
		Returns the bound `address`, the address `family` name and `port` of the
		socket as reported by the operating system:`{ port: 12346, family: 'IPv4', address: '127.0.0.1' }`
	**/
	function address():ts.AnyOf2<{ }, AddressInfo>;
	/**
		Calling `unref()` on a socket will allow the program to exit if this is the only
		active socket in the event system. If the socket is already `unref`ed calling`unref()` again will have no effect.
	**/
	function unref():Socket;
	/**
		Opposite of `unref()`, calling `ref()` on a previously `unref`ed socket will _not_ let the program exit if it's the only socket left (the default behavior).
		If the socket is `ref`ed calling `ref` again will have no effect.
	**/
	function ref():Socket;
	/**
		This property is only present if the family autoselection algorithm is enabled in `socket.connect(options)`
		and it is an array of the addresses that have been attempted.
		
		Each address is a string in the form of `$IP:$PORT`.
		If the connection was successful, then the last address is the one that the socket is currently connected to.
	**/
	final autoSelectFamilyAttemptedAddresses : Array<String>;
	/**
		This property shows the number of characters buffered for writing. The buffer
		may contain strings whose length after encoding is not yet known. So this number
		is only an approximation of the number of bytes in the buffer.
		
		`net.Socket` has the property that `socket.write()` always works. This is to
		help users get up and running quickly. The computer cannot always keep up
		with the amount of data that is written to a socket. The network connection
		simply might be too slow. Node.js will internally queue up the data written to a
		socket and send it out over the wire when it is possible.
		
		The consequence of this internal buffering is that memory may grow.
		Users who experience large or growing `bufferSize` should attempt to
		"throttle" the data flows in their program with `socket.pause()` and `socket.resume()`.
	**/
	final bufferSize : Float;
	/**
		The amount of received bytes.
	**/
	final bytesRead : Float;
	/**
		The amount of bytes sent.
	**/
	final bytesWritten : Float;
	/**
		If `true`, `socket.connect(options[, connectListener])` was
		called and has not yet finished. It will stay `true` until the socket becomes
		connected, then it is set to `false` and the `'connect'` event is emitted. Note
		that the `socket.connect(options[, connectListener])` callback is a listener for the `'connect'` event.
	**/
	final connecting : Bool;
	/**
		This is `true` if the socket is not connected yet, either because `.connect()`has not yet been called or because it is still in the process of connecting
		(see `socket.connecting`).
	**/
	final pending : Bool;
	/**
		The string representation of the local IP address the remote client is
		connecting on. For example, in a server listening on `'0.0.0.0'`, if a client
		connects on `'192.168.1.1'`, the value of `socket.localAddress` would be`'192.168.1.1'`.
	**/
	@:optional
	final localAddress : String;
	/**
		The numeric representation of the local port. For example, `80` or `21`.
	**/
	@:optional
	final localPort : Float;
	/**
		The string representation of the local IP family. `'IPv4'` or `'IPv6'`.
	**/
	@:optional
	final localFamily : String;
	/**
		This property represents the state of the connection as a string.
		
		* If the stream is connecting `socket.readyState` is `opening`.
		* If the stream is readable and writable, it is `open`.
		* If the stream is readable and not writable, it is `readOnly`.
		* If the stream is not readable and writable, it is `writeOnly`.
	**/
	final readyState : SocketReadyState;
	/**
		The string representation of the remote IP address. For example,`'74.125.127.100'` or `'2001:4860:a005::68'`. Value may be `undefined` if
		the socket is destroyed (for example, if the client disconnected).
	**/
	final remoteAddress : Null<String>;
	/**
		The string representation of the remote IP family. `'IPv4'` or `'IPv6'`. Value may be `undefined` if
		the socket is destroyed (for example, if the client disconnected).
	**/
	final remoteFamily : Null<String>;
	/**
		The numeric representation of the remote port. For example, `80` or `21`. Value may be `undefined` if
		the socket is destroyed (for example, if the client disconnected).
	**/
	final remotePort : Null<Float>;
	/**
		The socket timeout in milliseconds as set by `socket.setTimeout()`.
		It is `undefined` if a timeout has not been set.
	**/
	@:optional
	final timeout : Float;
	/**
		Half-closes the socket. i.e., it sends a FIN packet. It is possible the
		server will still send some data.
		
		See `writable.end()` for further details.
	**/
	@:overload(function(buffer:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?callback:() -> Void):Socket { })
	@:overload(function(str:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?encoding:global.nodejs.BufferEncoding, ?callback:() -> Void):Socket { })
	function end(?callback:() -> Void):Socket;
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
	@:overload(function(event:String, listener:(hadError:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float, error:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float) -> Void):Socket { })
	@:overload(function(event:String, listener:(data:node.buffer.NonSharedBuffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
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
	@:overload(function(event:String, hadError:Bool):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, ip:String, port:Float, family:Float):Bool { })
	@:overload(function(event:String, ip:String, port:Float, family:Float, error:js.lib.Error):Bool { })
	@:overload(function(event:String, ip:String, port:Float, family:Float):Bool { })
	@:overload(function(event:String, data:node.buffer.NonSharedBuffer):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String):Bool { })
	@:overload(function(event:String):Bool { })
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
	@:overload(function(event:String, listener:(hadError:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float, error:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float) -> Void):Socket { })
	@:overload(function(event:String, listener:(data:node.buffer.NonSharedBuffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
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
	@:overload(function(event:String, listener:(hadError:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float, error:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(data:node.buffer.NonSharedBuffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
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
	@:overload(function(event:String, listener:(hadError:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float, error:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float) -> Void):Socket { })
	@:overload(function(event:String, listener:(data:node.buffer.NonSharedBuffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
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
	@:overload(function(event:String, listener:(hadError:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float, error:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(ip:String, port:Float, family:Float) -> Void):Socket { })
	@:overload(function(event:String, listener:(data:node.buffer.NonSharedBuffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Socket { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket { })
	function removeListener(event:String, listener:() -> Void):Socket;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Socket;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Socket;
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
	function unpipe(?destination:global.nodejs.WritableStream):Socket;
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
	function wrap(stream:global.nodejs.ReadableStream):Socket;
	/**
		Destroy the stream. Optionally emit an `'error'` event, and emit a `'close'` event (unless `emitClose` is set to `false`). After this call, the readable
		stream will release any internal resources and subsequent calls to `push()` will be ignored.
		
		Once `destroy()` has been called any further calls will be a no-op and no
		further errors except from `_destroy()` may be emitted as `'error'`.
		
		Implementors should not override this method, but instead implement `readable._destroy()`.
	**/
	function destroy(?error:js.lib.Error):Socket;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):Socket;
	static var prototype : Socket;
}