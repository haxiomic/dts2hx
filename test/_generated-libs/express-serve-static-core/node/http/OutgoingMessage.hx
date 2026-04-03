package node.http;

/**
	This class serves as the parent class of
	{@link
	ClientRequest
	}
	and
	{@link
	ServerResponse
	}
	. It is an abstract outgoing message from
	the perspective of the participants of an HTTP transaction.
**/
@:jsRequire("http", "OutgoingMessage") extern class OutgoingMessage<Request:(IncomingMessage)> extends node.stream.stream.Writable {
	function new();
	final req : Request;
	var chunkedEncoding : Bool;
	var shouldKeepAlive : Bool;
	var useChunkedEncodingByDefault : Bool;
	var sendDate : Bool;
	var finished : Bool;
	/**
		Read-only. `true` if the headers were sent, otherwise `false`.
	**/
	final headersSent : Bool;
	/**
		Alias of `outgoingMessage.socket`.
	**/
	final connection : Null<node.net.Socket>;
	/**
		Reference to the underlying socket. Usually, users will not want to access
		this property.
		
		After calling `outgoingMessage.end()`, this property will be nulled.
	**/
	final socket : Null<node.net.Socket>;
	/**
		Once a socket is associated with the message and is connected, `socket.setTimeout()` will be called with `msecs` as the first parameter.
	**/
	function setTimeout(msecs:Float, ?callback:() -> Void):OutgoingMessage<Request>;
	/**
		Sets a single header value. If the header already exists in the to-be-sent
		headers, its value will be replaced. Use an array of strings to send multiple
		headers with the same name.
	**/
	function setHeader(name:String, value:ts.AnyOf3<String, Float, haxe.ds.ReadOnlyArray<String>>):OutgoingMessage<Request>;
	/**
		Sets multiple header values for implicit headers. headers must be an instance of
		`Headers` or `Map`, if a header already exists in the to-be-sent headers, its
		value will be replaced.
		
		```js
		const headers = new Headers({ foo: 'bar' });
		outgoingMessage.setHeaders(headers);
		```
		
		or
		
		```js
		const headers = new Map([['foo', 'bar']]);
		outgoingMessage.setHeaders(headers);
		```
		
		When headers have been set with `outgoingMessage.setHeaders()`, they will be
		merged with any headers passed to `response.writeHead()`, with the headers passed
		to `response.writeHead()` given precedence.
		
		```js
		// Returns content-type = text/plain
		const server = http.createServer((req, res) => {
		  const headers = new Headers({ 'Content-Type': 'text/html' });
		  res.setHeaders(headers);
		  res.writeHead(200, { 'Content-Type': 'text/plain' });
		  res.end('ok');
		});
		```
	**/
	function setHeaders(headers:ts.AnyOf2<js.html.Headers, js.lib.Map<String, ts.AnyOf3<String, Float, haxe.ds.ReadOnlyArray<String>>>>):OutgoingMessage<Request>;
	/**
		Append a single header value to the header object.
		
		If the value is an array, this is equivalent to calling this method multiple
		times.
		
		If there were no previous values for the header, this is equivalent to calling `outgoingMessage.setHeader(name, value)`.
		
		Depending of the value of `options.uniqueHeaders` when the client request or the
		server were created, this will end up in the header being sent multiple times or
		a single time with values joined using `; `.
	**/
	function appendHeader(name:String, value:ts.AnyOf2<String, haxe.ds.ReadOnlyArray<String>>):OutgoingMessage<Request>;
	/**
		Gets the value of the HTTP header with the given name. If that header is not
		set, the returned value will be `undefined`.
	**/
	function getHeader(name:String):Null<ts.AnyOf3<String, Float, Array<String>>>;
	/**
		Returns a shallow copy of the current outgoing headers. Since a shallow
		copy is used, array values may be mutated without additional calls to
		various header-related HTTP module methods. The keys of the returned
		object are the header names and the values are the respective header
		values. All header names are lowercase.
		
		The object returned by the `outgoingMessage.getHeaders()` method does
		not prototypically inherit from the JavaScript `Object`. This means that
		typical `Object` methods such as `obj.toString()`, `obj.hasOwnProperty()`,
		and others are not defined and will not work.
		
		```js
		outgoingMessage.setHeader('Foo', 'bar');
		outgoingMessage.setHeader('Set-Cookie', ['foo=bar', 'bar=baz']);
		
		const headers = outgoingMessage.getHeaders();
		// headers === { foo: 'bar', 'set-cookie': ['foo=bar', 'bar=baz'] }
		```
	**/
	function getHeaders():OutgoingHttpHeaders;
	/**
		Returns an array containing the unique names of the current outgoing headers.
		All names are lowercase.
	**/
	function getHeaderNames():Array<String>;
	/**
		Returns `true` if the header identified by `name` is currently set in the
		outgoing headers. The header name is case-insensitive.
		
		```js
		const hasContentType = outgoingMessage.hasHeader('content-type');
		```
	**/
	function hasHeader(name:String):Bool;
	/**
		Removes a header that is queued for implicit sending.
		
		```js
		outgoingMessage.removeHeader('Content-Encoding');
		```
	**/
	function removeHeader(name:String):Void;
	/**
		Adds HTTP trailers (headers but at the end of the message) to the message.
		
		Trailers will **only** be emitted if the message is chunked encoded. If not,
		the trailers will be silently discarded.
		
		HTTP requires the `Trailer` header to be sent to emit trailers,
		with a list of header field names in its value, e.g.
		
		```js
		message.writeHead(200, { 'Content-Type': 'text/plain',
		                         'Trailer': 'Content-MD5' });
		message.write(fileData);
		message.addTrailers({ 'Content-MD5': '7895bf4b8828b55ceaf47747b4bca667' });
		message.end();
		```
		
		Attempting to set a header field name or value that contains invalid characters
		will result in a `TypeError` being thrown.
	**/
	function addTrailers(headers:ts.AnyOf2<OutgoingHttpHeaders, haxe.ds.ReadOnlyArray<ts.Tuple2<String, String>>>):Void;
	/**
		Flushes the message headers.
		
		For efficiency reason, Node.js normally buffers the message headers
		until `outgoingMessage.end()` is called or the first chunk of message data
		is written. It then tries to pack the headers and data into a single TCP
		packet.
		
		It is usually desired (it saves a TCP round-trip), but not when the first
		data is not sent until possibly much later. `outgoingMessage.flushHeaders()` bypasses the optimization and kickstarts the message.
	**/
	function flushHeaders():Void;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):OutgoingMessage<Request>;
	/**
		Calling the `writable.end()` method signals that no more data will be written
		to the `Writable`. The optional `chunk` and `encoding` arguments allow one
		final additional chunk of data to be written immediately before closing the
		stream.
		
		Calling the
		{@link
		write
		}
		method after calling
		{@link
		end
		}
		will raise an error.
		
		```js
		// Write 'hello, ' and then end with 'world!'.
		import fs from 'node:fs';
		const file = fs.createWriteStream('example.txt');
		file.write('hello, ');
		file.end('world!');
		// Writing more now is not allowed!
		```
	**/
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?cb:() -> Void):OutgoingMessage<Request> { })
	function end(?cb:() -> Void):OutgoingMessage<Request>;
	/**
		Destroy the stream. Optionally emit an `'error'` event, and emit a `'close'` event (unless `emitClose` is set to `false`). After this call, the writable
		stream has ended and subsequent calls to `write()` or `end()` will result in
		an `ERR_STREAM_DESTROYED` error.
		This is a destructive and immediate way to destroy a stream. Previous calls to `write()` may not have drained, and may trigger an `ERR_STREAM_DESTROYED` error.
		Use `end()` instead of destroy if data should flush before close, or wait for
		the `'drain'` event before destroying the stream.
		
		Once `destroy()` has been called any further calls will be a no-op and no
		further errors except from `_destroy()` may be emitted as `'error'`.
		
		Implementors should not override this method,
		but instead implement `writable._destroy()`.
	**/
	function destroy(?error:js.lib.Error):OutgoingMessage<Request>;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. drain
		3. error
		4. finish
		5. pipe
		6. unpipe
	**/
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage<Request> { })
	function addListener(event:String, listener:() -> Void):OutgoingMessage<Request>;
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
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage<Request> { })
	function on(event:String, listener:() -> Void):OutgoingMessage<Request>;
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
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage<Request> { })
	function once(event:String, listener:() -> Void):OutgoingMessage<Request>;
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
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage<Request> { })
	function prependListener(event:String, listener:() -> Void):OutgoingMessage<Request>;
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
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage<Request> { })
	function prependOnceListener(event:String, listener:() -> Void):OutgoingMessage<Request>;
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
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):OutgoingMessage<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage<Request> { })
	function removeListener(event:String, listener:() -> Void):OutgoingMessage<Request>;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage<Request>;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):OutgoingMessage<Request>;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):OutgoingMessage<Request>;
	static var prototype : OutgoingMessage<Dynamic>;
}