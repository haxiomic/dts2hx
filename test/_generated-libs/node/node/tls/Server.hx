package node.tls;

/**
	Accepts encrypted connections using TLS or SSL.
**/
@:jsRequire("tls", "Server") extern class Server extends node.net.Server {
	@:overload(function(options:TlsOptions, ?secureConnectionListener:(socket:TLSSocket) -> Void):Server { })
	function new(?secureConnectionListener:(socket:TLSSocket) -> Void);
	/**
		The `server.addContext()` method adds a secure context that will be used if
		the client request's SNI name matches the supplied `hostname` (or wildcard).
		
		When there are multiple matching contexts, the most recently added one is
		used.
	**/
	function addContext(hostname:String, context:ts.AnyOf2<SecureContextOptions, SecureContext>):Void;
	/**
		Returns the session ticket keys.
		
		See `Session Resumption` for more information.
	**/
	function getTicketKeys():node.buffer.NonSharedBuffer;
	/**
		The `server.setSecureContext()` method replaces the secure context of an
		existing server. Existing connections to the server are not interrupted.
	**/
	function setSecureContext(options:SecureContextOptions):Void;
	/**
		Sets the session ticket keys.
		
		Changes to the ticket keys are effective only for future server connections.
		Existing or currently pending server connections will use the previous keys.
		
		See `Session Resumption` for more information.
	**/
	function setTicketKeys(keys:node.buffer.Buffer<js.lib.ArrayBufferLike>):Void;
	/**
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
		6. keylog
	**/
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:node.buffer.NonSharedBuffer, sessionData:node.buffer.NonSharedBuffer, callback:() -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:node.buffer.NonSharedBuffer, issuer:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, resp:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, sessionData:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(line:node.buffer.NonSharedBuffer, tlsSocket:TLSSocket) -> Void):Server { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
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
	@:overload(function(event:String, err:js.lib.Error, tlsSocket:TLSSocket):Bool { })
	@:overload(function(event:String, sessionId:node.buffer.NonSharedBuffer, sessionData:node.buffer.NonSharedBuffer, callback:() -> Void):Bool { })
	@:overload(function(event:String, certificate:node.buffer.NonSharedBuffer, issuer:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, resp:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void):Bool { })
	@:overload(function(event:String, sessionId:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, sessionData:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void):Bool { })
	@:overload(function(event:String, tlsSocket:TLSSocket):Bool { })
	@:overload(function(event:String, line:node.buffer.NonSharedBuffer, tlsSocket:TLSSocket):Bool { })
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
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:node.buffer.NonSharedBuffer, sessionData:node.buffer.NonSharedBuffer, callback:() -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:node.buffer.NonSharedBuffer, issuer:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, resp:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, sessionData:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(line:node.buffer.NonSharedBuffer, tlsSocket:TLSSocket) -> Void):Server { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
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
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:node.buffer.NonSharedBuffer, sessionData:node.buffer.NonSharedBuffer, callback:() -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:node.buffer.NonSharedBuffer, issuer:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, resp:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, sessionData:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(line:node.buffer.NonSharedBuffer, tlsSocket:TLSSocket) -> Void):Server { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
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
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:node.buffer.NonSharedBuffer, sessionData:node.buffer.NonSharedBuffer, callback:() -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:node.buffer.NonSharedBuffer, issuer:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, resp:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, sessionData:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(line:node.buffer.NonSharedBuffer, tlsSocket:TLSSocket) -> Void):Server { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
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
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:node.buffer.NonSharedBuffer, sessionData:node.buffer.NonSharedBuffer, callback:() -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:node.buffer.NonSharedBuffer, issuer:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, resp:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:node.buffer.NonSharedBuffer, callback:(err:Null<js.lib.Error>, sessionData:Null<node.buffer.Buffer<js.lib.ArrayBufferLike>>) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(line:node.buffer.NonSharedBuffer, tlsSocket:TLSSocket) -> Void):Server { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	/**
		Start a server listening for connections. A `net.Server` can be a TCP or
		an `IPC` server depending on what it listens to.
		
		Possible signatures:
		
		* `server.listen(handle[, backlog][, callback])`
		* `server.listen(options[, callback])`
		* `server.listen(path[, backlog][, callback])` for `IPC` servers
		* `server.listen([port[, host[, backlog]]][, callback])` for TCP servers
		
		This function is asynchronous. When the server starts listening, the `'listening'` event will be emitted. The last parameter `callback`will be added as a listener for the `'listening'`
		event.
		
		All `listen()` methods can take a `backlog` parameter to specify the maximum
		length of the queue of pending connections. The actual length will be determined
		by the OS through sysctl settings such as `tcp_max_syn_backlog` and `somaxconn` on Linux. The default value of this parameter is 511 (not 512).
		
		All
		{@link
		Socket
		}
		are set to `SO_REUSEADDR` (see [`socket(7)`](https://man7.org/linux/man-pages/man7/socket.7.html) for
		details).
		
		The `server.listen()` method can be called again if and only if there was an
		error during the first `server.listen()` call or `server.close()` has been
		called. Otherwise, an `ERR_SERVER_ALREADY_LISTEN` error will be thrown.
		
		One of the most common errors raised when listening is `EADDRINUSE`.
		This happens when another server is already listening on the requested`port`/`path`/`handle`. One way to handle this would be to retry
		after a certain amount of time:
		
		```js
		server.on('error', (e) => {
		  if (e.code === 'EADDRINUSE') {
		    console.error('Address in use, retrying...');
		    setTimeout(() => {
		      server.close();
		      server.listen(PORT, HOST);
		    }, 1000);
		  }
		});
		```
	**/
	@:overload(function(?port:Float, ?hostname:String, ?listeningListener:() -> Void):Server { })
	@:overload(function(?port:Float, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(?port:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(path:String, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(path:String, ?listeningListener:() -> Void):Server { })
	@:overload(function(options:node.net.ListenOptions, ?listeningListener:() -> Void):Server { })
	@:overload(function(handle:Dynamic, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:() -> Void):Server { })
	function listen(?port:Float, ?hostname:String, ?backlog:Float, ?listeningListener:() -> Void):Server;
	/**
		Stops the server from accepting new connections and keeps existing
		connections. This function is asynchronous, the server is finally closed
		when all connections are ended and the server emits a `'close'` event.
		The optional `callback` will be called once the `'close'` event occurs. Unlike
		that event, it will be called with an `Error` as its only argument if the server
		was not open when it was closed.
	**/
	function close(?callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Server;
	/**
		Asynchronously get the number of concurrent connections on the server. Works
		when sockets were sent to forks.
		
		Callback should take two arguments `err` and `count`.
	**/
	function getConnections(cb:(error:Null<js.lib.Error>, count:Float) -> Void):Server;
	/**
		Opposite of `unref()`, calling `ref()` on a previously `unref`ed server will _not_ let the program exit if it's the only server left (the default behavior).
		If the server is `ref`ed calling `ref()` again will have no effect.
	**/
	function ref():Server;
	/**
		Calling `unref()` on a server will allow the program to exit if this is the only
		active server in the event system. If the server is already `unref`ed calling`unref()` again will have no effect.
	**/
	function unref():Server;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Server;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Server;
	static var prototype : Server;
}