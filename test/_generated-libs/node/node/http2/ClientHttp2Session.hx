package node.http2;

typedef ClientHttp2Session = {
	/**
		For HTTP/2 Client `Http2Session` instances only, the `http2session.request()` creates and returns an `Http2Stream` instance that can be used to send an
		HTTP/2 request to the connected server.
		
		When a `ClientHttp2Session` is first created, the socket may not yet be
		connected. if `clienthttp2session.request()` is called during this time, the
		actual request will be deferred until the socket is ready to go.
		If the `session` is closed before the actual request be executed, an `ERR_HTTP2_GOAWAY_SESSION` is thrown.
		
		This method is only available if `http2session.type` is equal to `http2.constants.NGHTTP2_SESSION_CLIENT`.
		
		```js
		import http2 from 'node:http2';
		const clientSession = http2.connect('https://localhost:1234');
		const {
		  HTTP2_HEADER_PATH,
		  HTTP2_HEADER_STATUS,
		} = http2.constants;
		
		const req = clientSession.request({ [HTTP2_HEADER_PATH]: '/' });
		req.on('response', (headers) => {
		  console.log(headers[HTTP2_HEADER_STATUS]);
		  req.on('data', (chunk) => { // ..  });
		  req.on('end', () => { // ..  });
		});
		```
		
		When the `options.waitForTrailers` option is set, the `'wantTrailers'` event
		is emitted immediately after queuing the last chunk of payload data to be sent.
		The `http2stream.sendTrailers()` method can then be called to send trailing
		headers to the peer.
		
		When `options.waitForTrailers` is set, the `Http2Stream` will not automatically
		close when the final `DATA` frame is transmitted. User code must call either`http2stream.sendTrailers()` or `http2stream.close()` to close the`Http2Stream`.
		
		When `options.signal` is set with an `AbortSignal` and then `abort` on the
		corresponding `AbortController` is called, the request will emit an `'error'`event with an `AbortError` error.
		
		The `:method` and `:path` pseudo-headers are not specified within `headers`,
		they respectively default to:
		
		* `:method` \= `'GET'`
		* `:path` \= `/`
	**/
	function request(?headers:node.http.OutgoingHttpHeaders, ?options:ClientSessionRequestOptions):ClientHttp2Stream;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	@:overload(function(event:String, listener:(origins:Array<String>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session { })
	function addListener(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session;
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
	@:overload(function(event:String, origins:haxe.ds.ReadOnlyArray<String>):Bool { })
	@:overload(function(event:String, session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>):Bool { })
	@:overload(function(event:String, stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String, alt:String, origin:String, stream:Float):Bool;
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
	@:overload(function(event:String, listener:(origins:Array<String>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session { })
	function on(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session;
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
	@:overload(function(event:String, listener:(origins:Array<String>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session { })
	function once(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session;
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
	@:overload(function(event:String, listener:(origins:Array<String>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session { })
	function prependListener(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session;
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
	@:overload(function(event:String, listener:(origins:Array<String>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session { })
	function prependOnceListener(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session;
	/**
		Value will be `undefined` if the `Http2Session` is not yet connected to a
		socket, `h2c` if the `Http2Session` is not connected to a `TLSSocket`, or
		will return the value of the connected `TLSSocket`'s own `alpnProtocol` property.
	**/
	@:optional
	final alpnProtocol : String;
	/**
		Will be `true` if this `Http2Session` instance has been closed, otherwise `false`.
	**/
	final closed : Bool;
	/**
		Will be `true` if this `Http2Session` instance is still connecting, will be set
		to `false` before emitting `connect` event and/or calling the `http2.connect` callback.
	**/
	final connecting : Bool;
	/**
		Will be `true` if this `Http2Session` instance has been destroyed and must no
		longer be used, otherwise `false`.
	**/
	final destroyed : Bool;
	/**
		Value is `undefined` if the `Http2Session` session socket has not yet been
		connected, `true` if the `Http2Session` is connected with a `TLSSocket`,
		and `false` if the `Http2Session` is connected to any other kind of socket
		or stream.
	**/
	@:optional
	final encrypted : Bool;
	/**
		A prototype-less object describing the current local settings of this `Http2Session`.
		The local settings are local to _this_`Http2Session` instance.
	**/
	final localSettings : Settings;
	/**
		If the `Http2Session` is connected to a `TLSSocket`, the `originSet` property
		will return an `Array` of origins for which the `Http2Session` may be
		considered authoritative.
		
		The `originSet` property is only available when using a secure TLS connection.
	**/
	@:optional
	final originSet : Array<String>;
	/**
		Indicates whether the `Http2Session` is currently waiting for acknowledgment of
		a sent `SETTINGS` frame. Will be `true` after calling the `http2session.settings()` method.
		Will be `false` once all sent `SETTINGS` frames have been acknowledged.
	**/
	final pendingSettingsAck : Bool;
	/**
		A prototype-less object describing the current remote settings of this`Http2Session`.
		The remote settings are set by the _connected_ HTTP/2 peer.
	**/
	final remoteSettings : Settings;
	/**
		Returns a `Proxy` object that acts as a `net.Socket` (or `tls.TLSSocket`) but
		limits available methods to ones safe to use with HTTP/2.
		
		`destroy`, `emit`, `end`, `pause`, `read`, `resume`, and `write` will throw
		an error with code `ERR_HTTP2_NO_SOCKET_MANIPULATION`. See `Http2Session and Sockets` for more information.
		
		`setTimeout` method will be called on this `Http2Session`.
		
		All other interactions will be routed directly to the socket.
	**/
	final socket : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	/**
		Provides miscellaneous information about the current state of the`Http2Session`.
		
		An object describing the current status of this `Http2Session`.
	**/
	final state : SessionState;
	/**
		The `http2session.type` will be equal to `http2.constants.NGHTTP2_SESSION_SERVER` if this `Http2Session` instance is a
		server, and `http2.constants.NGHTTP2_SESSION_CLIENT` if the instance is a
		client.
	**/
	final type : Float;
	/**
		Gracefully closes the `Http2Session`, allowing any existing streams to
		complete on their own and preventing new `Http2Stream` instances from being
		created. Once closed, `http2session.destroy()`_might_ be called if there
		are no open `Http2Stream` instances.
		
		If specified, the `callback` function is registered as a handler for the`'close'` event.
	**/
	function close(?callback:() -> Void):Void;
	/**
		Immediately terminates the `Http2Session` and the associated `net.Socket` or `tls.TLSSocket`.
		
		Once destroyed, the `Http2Session` will emit the `'close'` event. If `error` is not undefined, an `'error'` event will be emitted immediately before the `'close'` event.
		
		If there are any remaining open `Http2Streams` associated with the `Http2Session`, those will also be destroyed.
	**/
	function destroy(?error:js.lib.Error, ?code:Float):Void;
	/**
		Transmits a `GOAWAY` frame to the connected peer _without_ shutting down the`Http2Session`.
	**/
	function goaway(?code:Float, ?lastStreamID:Float, ?opaqueData:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>):Void;
	/**
		Sends a `PING` frame to the connected HTTP/2 peer. A `callback` function must
		be provided. The method will return `true` if the `PING` was sent, `false` otherwise.
		
		The maximum number of outstanding (unacknowledged) pings is determined by the `maxOutstandingPings` configuration option. The default maximum is 10.
		
		If provided, the `payload` must be a `Buffer`, `TypedArray`, or `DataView` containing 8 bytes of data that will be transmitted with the `PING` and
		returned with the ping acknowledgment.
		
		The callback will be invoked with three arguments: an error argument that will
		be `null` if the `PING` was successfully acknowledged, a `duration` argument
		that reports the number of milliseconds elapsed since the ping was sent and the
		acknowledgment was received, and a `Buffer` containing the 8-byte `PING` payload.
		
		```js
		session.ping(Buffer.from('abcdefgh'), (err, duration, payload) => {
		  if (!err) {
		    console.log(`Ping acknowledged in ${duration} milliseconds`);
		    console.log(`With payload '${payload.toString()}'`);
		  }
		});
		```
		
		If the `payload` argument is not specified, the default payload will be the
		64-bit timestamp (little endian) marking the start of the `PING` duration.
	**/
	@:overload(function(payload:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>, callback:(err:Null<js.lib.Error>, duration:Float, payload:node.buffer.NonSharedBuffer) -> Void):Bool { })
	function ping(callback:(err:Null<js.lib.Error>, duration:Float, payload:node.buffer.NonSharedBuffer) -> Void):Bool;
	/**
		Calls `ref()` on this `Http2Session` instance's underlying `net.Socket`.
	**/
	function ref():Void;
	/**
		Sets the local endpoint's window size.
		The `windowSize` is the total window size to set, not
		the delta.
		
		```js
		import http2 from 'node:http2';
		
		const server = http2.createServer();
		const expectedWindowSize = 2 ** 20;
		server.on('connect', (session) => {
		
		  // Set local window size to be 2 ** 20
		  session.setLocalWindowSize(expectedWindowSize);
		});
		```
	**/
	function setLocalWindowSize(windowSize:Float):Void;
	/**
		Used to set a callback function that is called when there is no activity on
		the `Http2Session` after `msecs` milliseconds. The given `callback` is
		registered as a listener on the `'timeout'` event.
	**/
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	/**
		Updates the current local settings for this `Http2Session` and sends a new `SETTINGS` frame to the connected HTTP/2 peer.
		
		Once called, the `http2session.pendingSettingsAck` property will be `true` while the session is waiting for the remote peer to acknowledge the new
		settings.
		
		The new settings will not become effective until the `SETTINGS` acknowledgment
		is received and the `'localSettings'` event is emitted. It is possible to send
		multiple `SETTINGS` frames while acknowledgment is still pending.
	**/
	function settings(settings:Settings, ?callback:(err:Null<js.lib.Error>, settings:Settings, duration:Float) -> Void):Void;
	/**
		Calls `unref()` on this `Http2Session`instance's underlying `net.Socket`.
	**/
	function unref():Void;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):ClientHttp2Session;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):ClientHttp2Session;
	/**
		Returns the current max listener value for the `EventEmitter` which is either
		set by `emitter.setMaxListeners(n)` or defaults to
		{@link
		EventEmitter.defaultMaxListeners
		}
		.
	**/
	function getMaxListeners():Float;
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
	function listeners<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
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
	function rawListeners<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	/**
		Returns the number of listeners listening for the event named `eventName`.
		If `listener` is provided, it will return how many times the listener is found
		in the list of the listeners of the event.
	**/
	function listenerCount<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, ?listener:haxe.Constraints.Function):Float;
	/**
		Returns an array listing the events for which the emitter has registered
		listeners. The values in the array are strings or `Symbol`s.
		
		```js
		import { EventEmitter } from 'node:events';
		
		const myEE = new EventEmitter();
		myEE.on('foo', () => {});
		myEE.on('bar', () => {});
		
		const sym = Symbol('symbol');
		myEE.on(sym, () => {});
		
		console.log(myEE.eventNames());
		// Prints: [ 'foo', 'bar', Symbol(symbol) ]
		```
	**/
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};