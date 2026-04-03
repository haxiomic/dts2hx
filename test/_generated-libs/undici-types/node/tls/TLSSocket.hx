package node.tls;

/**
	Performs transparent encryption of written data and all required TLS
	negotiation.
	
	Instances of `tls.TLSSocket` implement the duplex `Stream` interface.
	
	Methods that return TLS connection metadata (e.g.
	{@link
	TLSSocket.getPeerCertificate
	}
	) will only return data while the
	connection is open.
**/
@:jsRequire("tls", "TLSSocket") extern class TLSSocket extends node.net.Socket {
	/**
		Construct a new tls.TLSSocket object from an existing TCP socket.
	**/
	function new(socket:ts.AnyOf2<node.net.Socket, node.stream.stream.Duplex>, ?options:TLSSocketOptions);
	/**
		This property is `true` if the peer certificate was signed by one of the CAs
		specified when creating the `tls.TLSSocket` instance, otherwise `false`.
	**/
	var authorized : Bool;
	/**
		Returns the reason why the peer's certificate was not been verified. This
		property is set only when `tlsSocket.authorized === false`.
	**/
	var authorizationError : js.lib.Error;
	/**
		Always returns `true`. This may be used to distinguish TLS sockets from regular`net.Socket` instances.
	**/
	var encrypted : Bool;
	/**
		String containing the selected ALPN protocol.
		Before a handshake has completed, this value is always null.
		When a handshake is completed but not ALPN protocol was selected, tlsSocket.alpnProtocol equals false.
	**/
	var alpnProtocol : Null<ts.AnyOf2<String, Bool>>;
	/**
		String containing the server name requested via SNI (Server Name Indication) TLS extension.
	**/
	var servername : Null<ts.AnyOf2<String, Bool>>;
	/**
		Returns an object representing the local certificate. The returned object has
		some properties corresponding to the fields of the certificate.
		
		See
		{@link
		TLSSocket.getPeerCertificate
		}
		for an example of the certificate
		structure.
		
		If there is no local certificate, an empty object will be returned. If the
		socket has been destroyed, `null` will be returned.
	**/
	function getCertificate():Null<ts.AnyOf2<Dynamic, PeerCertificate>>;
	/**
		Returns an object containing information on the negotiated cipher suite.
		
		For example, a TLSv1.2 protocol with AES256-SHA cipher:
		
		```json
		{
		    "name": "AES256-SHA",
		    "standardName": "TLS_RSA_WITH_AES_256_CBC_SHA",
		    "version": "SSLv3"
		}
		```
		
		See [SSL\_CIPHER\_get\_name](https://www.openssl.org/docs/man1.1.1/man3/SSL_CIPHER_get_name.html) for more information.
	**/
	function getCipher():CipherNameAndProtocol;
	/**
		Returns an object representing the type, name, and size of parameter of
		an ephemeral key exchange in `perfect forward secrecy` on a client
		connection. It returns an empty object when the key exchange is not
		ephemeral. As this is only supported on a client socket; `null` is returned
		if called on a server socket. The supported types are `'DH'` and `'ECDH'`. The `name` property is available only when type is `'ECDH'`.
		
		For example: `{ type: 'ECDH', name: 'prime256v1', size: 256 }`.
	**/
	function getEphemeralKeyInfo():Null<ts.AnyOf2<Dynamic, EphemeralKeyInfo>>;
	/**
		As the `Finished` messages are message digests of the complete handshake
		(with a total of 192 bits for TLS 1.0 and more for SSL 3.0), they can
		be used for external authentication procedures when the authentication
		provided by SSL/TLS is not desired or is not enough.
		
		Corresponds to the `SSL_get_finished` routine in OpenSSL and may be used
		to implement the `tls-unique` channel binding from [RFC 5929](https://tools.ietf.org/html/rfc5929).
	**/
	function getFinished():Null<node.buffer.NonSharedBuffer>;
	/**
		Returns an object representing the peer's certificate. If the peer does not
		provide a certificate, an empty object will be returned. If the socket has been
		destroyed, `null` will be returned.
		
		If the full certificate chain was requested, each certificate will include an`issuerCertificate` property containing an object representing its issuer's
		certificate.
	**/
	@:overload(function(?detailed:Bool):PeerCertificate { })
	@:overload(function(?detailed:Bool):ts.AnyOf2<PeerCertificate, DetailedPeerCertificate> { })
	function getPeerCertificate(detailed:Bool):DetailedPeerCertificate;
	/**
		As the `Finished` messages are message digests of the complete handshake
		(with a total of 192 bits for TLS 1.0 and more for SSL 3.0), they can
		be used for external authentication procedures when the authentication
		provided by SSL/TLS is not desired or is not enough.
		
		Corresponds to the `SSL_get_peer_finished` routine in OpenSSL and may be used
		to implement the `tls-unique` channel binding from [RFC 5929](https://tools.ietf.org/html/rfc5929).
	**/
	function getPeerFinished():Null<node.buffer.NonSharedBuffer>;
	/**
		Returns a string containing the negotiated SSL/TLS protocol version of the
		current connection. The value `'unknown'` will be returned for connected
		sockets that have not completed the handshaking process. The value `null` will
		be returned for server sockets or disconnected client sockets.
		
		Protocol versions are:
		
		* `'SSLv3'`
		* `'TLSv1'`
		* `'TLSv1.1'`
		* `'TLSv1.2'`
		* `'TLSv1.3'`
		
		See the OpenSSL [`SSL_get_version`](https://www.openssl.org/docs/man1.1.1/man3/SSL_get_version.html) documentation for more information.
	**/
	function getProtocol():Null<String>;
	/**
		Returns the TLS session data or `undefined` if no session was
		negotiated. On the client, the data can be provided to the `session` option of
		{@link
		connect
		}
		to resume the connection. On the server, it may be useful
		for debugging.
		
		See `Session Resumption` for more information.
		
		Note: `getSession()` works only for TLSv1.2 and below. For TLSv1.3, applications
		must use the `'session'` event (it also works for TLSv1.2 and below).
	**/
	function getSession():Null<node.buffer.NonSharedBuffer>;
	/**
		See [SSL\_get\_shared\_sigalgs](https://www.openssl.org/docs/man1.1.1/man3/SSL_get_shared_sigalgs.html) for more information.
	**/
	function getSharedSigalgs():Array<String>;
	/**
		For a client, returns the TLS session ticket if one is available, or`undefined`. For a server, always returns `undefined`.
		
		It may be useful for debugging.
		
		See `Session Resumption` for more information.
	**/
	function getTLSTicket():Null<node.buffer.NonSharedBuffer>;
	/**
		See `Session Resumption` for more information.
	**/
	function isSessionReused():Bool;
	/**
		The `tlsSocket.renegotiate()` method initiates a TLS renegotiation process.
		Upon completion, the `callback` function will be passed a single argument
		that is either an `Error` (if the request failed) or `null`.
		
		This method can be used to request a peer's certificate after the secure
		connection has been established.
		
		When running as the server, the socket will be destroyed with an error after `handshakeTimeout` timeout.
		
		For TLSv1.3, renegotiation cannot be initiated, it is not supported by the
		protocol.
	**/
	function renegotiate(options:{ @:optional var rejectUnauthorized : Bool; @:optional var requestCert : Bool; }, callback:(err:Null<js.lib.Error>) -> Void):Null<Bool>;
	/**
		The `tlsSocket.setKeyCert()` method sets the private key and certificate to use for the socket.
		This is mainly useful if you wish to select a server certificate from a TLS server's `ALPNCallback`.
	**/
	function setKeyCert(context:ts.AnyOf2<SecureContextOptions, SecureContext>):Void;
	/**
		The `tlsSocket.setMaxSendFragment()` method sets the maximum TLS fragment size.
		Returns `true` if setting the limit succeeded; `false` otherwise.
		
		Smaller fragment sizes decrease the buffering latency on the client: larger
		fragments are buffered by the TLS layer until the entire fragment is received
		and its integrity is verified; large fragments can span multiple roundtrips
		and their processing can be delayed due to packet loss or reordering. However,
		smaller fragments add extra TLS framing bytes and CPU overhead, which may
		decrease overall server throughput.
	**/
	function setMaxSendFragment(size:Float):Bool;
	/**
		Disables TLS renegotiation for this `TLSSocket` instance. Once called, attempts
		to renegotiate will trigger an `'error'` event on the `TLSSocket`.
	**/
	function disableRenegotiation():Void;
	/**
		When enabled, TLS packet trace information is written to `stderr`. This can be
		used to debug TLS connection problems.
		
		The format of the output is identical to the output of`openssl s_client -trace` or `openssl s_server -trace`. While it is produced by
		OpenSSL's `SSL_trace()` function, the format is undocumented, can change
		without notice, and should not be relied on.
	**/
	function enableTrace():Void;
	/**
		Returns the peer certificate as an `X509Certificate` object.
		
		If there is no peer certificate, or the socket has been destroyed,`undefined` will be returned.
	**/
	function getPeerX509Certificate():Null<node.crypto.X509Certificate>;
	/**
		Returns the local certificate as an `X509Certificate` object.
		
		If there is no local certificate, or the socket has been destroyed,`undefined` will be returned.
	**/
	function getX509Certificate():Null<node.crypto.X509Certificate>;
	/**
		Keying material is used for validations to prevent different kind of attacks in
		network protocols, for example in the specifications of IEEE 802.1X.
		
		Example
		
		```js
		const keyingMaterial = tlsSocket.exportKeyingMaterial(
		  128,
		  'client finished');
		
		/*
		 Example return value of keyingMaterial:
		 <Buffer 76 26 af 99 c5 56 8e 42 09 91 ef 9f 93 cb ad 6c 7b 65 f8 53 f1 d8 d9
		    12 5a 33 b8 b5 25 df 7b 37 9f e0 e2 4f b8 67 83 a3 2f cd 5d 41 42 4c 91
		    74 ef 2c ... 78 more bytes>
		
		```
		
		See the OpenSSL [`SSL_export_keying_material`](https://www.openssl.org/docs/man1.1.1/man3/SSL_export_keying_material.html) documentation for more
		information.
	**/
	function exportKeyingMaterial(length:Float, label:String, context:node.buffer.Buffer<js.lib.ArrayBufferLike>):node.buffer.NonSharedBuffer;
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
	@:overload(function(event:String, listener:(response:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(line:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
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
	@:overload(function(event:String, response:node.buffer.NonSharedBuffer):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, session:node.buffer.NonSharedBuffer):Bool { })
	@:overload(function(event:String, line:node.buffer.NonSharedBuffer):Bool { })
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
	@:overload(function(event:String, listener:(response:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(line:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
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
	@:overload(function(event:String, listener:(response:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(line:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
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
	@:overload(function(event:String, listener:(response:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(line:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
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
	@:overload(function(event:String, listener:(response:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(line:node.buffer.NonSharedBuffer) -> Void):TLSSocket { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
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
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):TLSSocket { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):TLSSocket { })
	@:overload(function(path:String, ?connectionListener:() -> Void):TLSSocket { })
	function connect(options:node.net.SocketConnectOpts, ?connectionListener:() -> Void):TLSSocket;
	/**
		Set the encoding for the socket as a `Readable Stream`. See `readable.setEncoding()` for more information.
	**/
	function setEncoding(?encoding:global.nodejs.BufferEncoding):TLSSocket;
	/**
		Pauses the reading of data. That is, `'data'` events will not be emitted.
		Useful to throttle back an upload.
	**/
	function pause():TLSSocket;
	/**
		Close the TCP connection by sending an RST packet and destroy the stream.
		If this TCP socket is in connecting status, it will send an RST packet and destroy this TCP socket once it is connected.
		Otherwise, it will call `socket.destroy` with an `ERR_SOCKET_CLOSED` Error.
		If this is not a TCP socket (for example, a pipe), calling this method will immediately throw an `ERR_INVALID_HANDLE_TYPE` Error.
	**/
	function resetAndDestroy():TLSSocket;
	/**
		Resumes reading after a call to `socket.pause()`.
	**/
	function resume():TLSSocket;
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
	function setTimeout(timeout:Float, ?callback:() -> Void):TLSSocket;
	/**
		Enable/disable the use of Nagle's algorithm.
		
		When a TCP connection is created, it will have Nagle's algorithm enabled.
		
		Nagle's algorithm delays data before it is sent via the network. It attempts
		to optimize throughput at the expense of latency.
		
		Passing `true` for `noDelay` or not passing an argument will disable Nagle's
		algorithm for the socket. Passing `false` for `noDelay` will enable Nagle's
		algorithm.
	**/
	function setNoDelay(?noDelay:Bool):TLSSocket;
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
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):TLSSocket;
	/**
		Calling `unref()` on a socket will allow the program to exit if this is the only
		active socket in the event system. If the socket is already `unref`ed calling`unref()` again will have no effect.
	**/
	function unref():TLSSocket;
	/**
		Opposite of `unref()`, calling `ref()` on a previously `unref`ed socket will _not_ let the program exit if it's the only socket left (the default behavior).
		If the socket is `ref`ed calling `ref` again will have no effect.
	**/
	function ref():TLSSocket;
	/**
		Half-closes the socket. i.e., it sends a FIN packet. It is possible the
		server will still send some data.
		
		See `writable.end()` for further details.
	**/
	@:overload(function(buffer:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?callback:() -> Void):TLSSocket { })
	@:overload(function(str:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?encoding:global.nodejs.BufferEncoding, ?callback:() -> Void):TLSSocket { })
	function end(?callback:() -> Void):TLSSocket;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):TLSSocket { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket { })
	function removeListener(event:String, listener:() -> Void):TLSSocket;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):TLSSocket;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):TLSSocket;
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
	function unpipe(?destination:global.nodejs.WritableStream):TLSSocket;
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
	function wrap(stream:global.nodejs.ReadableStream):TLSSocket;
	/**
		Destroy the stream. Optionally emit an `'error'` event, and emit a `'close'` event (unless `emitClose` is set to `false`). After this call, the readable
		stream will release any internal resources and subsequent calls to `push()` will be ignored.
		
		Once `destroy()` has been called any further calls will be a no-op and no
		further errors except from `_destroy()` may be emitted as `'error'`.
		
		Implementors should not override this method, but instead implement `readable._destroy()`.
	**/
	function destroy(?error:js.lib.Error):TLSSocket;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):TLSSocket;
	static var prototype : TLSSocket;
}