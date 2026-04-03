package node.http2;

/**
	This object is created internally by an HTTP server, not by the user. It is
	passed as the second parameter to the `'request'` event.
**/
@:jsRequire("http2", "Http2ServerResponse") extern class Http2ServerResponse<Request:(Http2ServerRequest)> extends node.stream.stream.Writable {
	function new(stream:ServerHttp2Stream);
	/**
		See `response.socket`.
	**/
	final connection : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	/**
		Append a single header value to the header object.
		
		If the value is an array, this is equivalent to calling this method multiple times.
		
		If there were no previous values for the header, this is equivalent to calling
		{@link
		setHeader
		}
		.
		
		Attempting to set a header field name or value that contains invalid characters will result in a
		[TypeError](https://nodejs.org/docs/latest-v20.x/api/errors.html#class-typeerror) being thrown.
		
		```js
		// Returns headers including "set-cookie: a" and "set-cookie: b"
		const server = http2.createServer((req, res) => {
		  res.setHeader('set-cookie', 'a');
		  res.appendHeader('set-cookie', 'b');
		  res.writeHead(200);
		  res.end('ok');
		});
		```
	**/
	function appendHeader(name:String, value:ts.AnyOf2<String, Array<String>>):Void;
	/**
		Boolean value that indicates whether the response has completed. Starts
		as `false`. After `response.end()` executes, the value will be `true`.
	**/
	final finished : Bool;
	/**
		True if headers were sent, false otherwise (read-only).
	**/
	final headersSent : Bool;
	/**
		A reference to the original HTTP2 `request` object.
	**/
	final req : Request;
	/**
		Returns a `Proxy` object that acts as a `net.Socket` (or `tls.TLSSocket`) but
		applies getters, setters, and methods based on HTTP/2 logic.
		
		`destroyed`, `readable`, and `writable` properties will be retrieved from and
		set on `response.stream`.
		
		`destroy`, `emit`, `end`, `on` and `once` methods will be called on `response.stream`.
		
		`setTimeout` method will be called on `response.stream.session`.
		
		`pause`, `read`, `resume`, and `write` will throw an error with code `ERR_HTTP2_NO_SOCKET_MANIPULATION`. See `Http2Session and Sockets` for
		more information.
		
		All other interactions will be routed directly to the socket.
		
		```js
		import http2 from 'node:http2';
		const server = http2.createServer((req, res) => {
		  const ip = req.socket.remoteAddress;
		  const port = req.socket.remotePort;
		  res.end(`Your IP address is ${ip} and your source port is ${port}.`);
		}).listen(3000);
		```
	**/
	final socket : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	/**
		The `Http2Stream` object backing the response.
	**/
	final stream : ServerHttp2Stream;
	/**
		When true, the Date header will be automatically generated and sent in
		the response if it is not already present in the headers. Defaults to true.
		
		This should only be disabled for testing; HTTP requires the Date header
		in responses.
	**/
	var sendDate : Bool;
	/**
		When using implicit headers (not calling `response.writeHead()` explicitly),
		this property controls the status code that will be sent to the client when
		the headers get flushed.
		
		```js
		response.statusCode = 404;
		```
		
		After response header was sent to the client, this property indicates the
		status code which was sent out.
	**/
	var statusCode : Float;
	/**
		Status message is not supported by HTTP/2 (RFC 7540 8.1.2.4). It returns
		an empty string.
	**/
	var statusMessage : String;
	/**
		This method adds HTTP trailing headers (a header but at the end of the
		message) to the response.
		
		Attempting to set a header field name or value that contains invalid characters
		will result in a `TypeError` being thrown.
	**/
	function addTrailers(trailers:node.http.OutgoingHttpHeaders):Void;
	/**
		This method signals to the server that all of the response headers and body
		have been sent; that server should consider this message complete.
		The method, `response.end()`, MUST be called on each response.
		
		If `data` is specified, it is equivalent to calling `response.write(data, encoding)` followed by `response.end(callback)`.
		
		If `callback` is specified, it will be called when the response stream
		is finished.
	**/
	@:overload(function(data:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?callback:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(data:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, encoding:global.nodejs.BufferEncoding, ?callback:() -> Void):Http2ServerResponse<Request> { })
	function end(?callback:() -> Void):Http2ServerResponse<Request>;
	/**
		Reads out a header that has already been queued but not sent to the client.
		The name is case-insensitive.
		
		```js
		const contentType = response.getHeader('content-type');
		```
	**/
	function getHeader(name:String):String;
	/**
		Returns an array containing the unique names of the current outgoing headers.
		All header names are lowercase.
		
		```js
		response.setHeader('Foo', 'bar');
		response.setHeader('Set-Cookie', ['foo=bar', 'bar=baz']);
		
		const headerNames = response.getHeaderNames();
		// headerNames === ['foo', 'set-cookie']
		```
	**/
	function getHeaderNames():Array<String>;
	/**
		Returns a shallow copy of the current outgoing headers. Since a shallow copy
		is used, array values may be mutated without additional calls to various
		header-related http module methods. The keys of the returned object are the
		header names and the values are the respective header values. All header names
		are lowercase.
		
		The object returned by the `response.getHeaders()` method _does not_ prototypically inherit from the JavaScript `Object`. This means that typical `Object` methods such as `obj.toString()`,
		`obj.hasOwnProperty()`, and others
		are not defined and _will not work_.
		
		```js
		response.setHeader('Foo', 'bar');
		response.setHeader('Set-Cookie', ['foo=bar', 'bar=baz']);
		
		const headers = response.getHeaders();
		// headers === { foo: 'bar', 'set-cookie': ['foo=bar', 'bar=baz'] }
		```
	**/
	function getHeaders():node.http.OutgoingHttpHeaders;
	/**
		Returns `true` if the header identified by `name` is currently set in the
		outgoing headers. The header name matching is case-insensitive.
		
		```js
		const hasContentType = response.hasHeader('content-type');
		```
	**/
	function hasHeader(name:String):Bool;
	/**
		Removes a header that has been queued for implicit sending.
		
		```js
		response.removeHeader('Content-Encoding');
		```
	**/
	function removeHeader(name:String):Void;
	/**
		Sets a single header value for implicit headers. If this header already exists
		in the to-be-sent headers, its value will be replaced. Use an array of strings
		here to send multiple headers with the same name.
		
		```js
		response.setHeader('Content-Type', 'text/html; charset=utf-8');
		```
		
		or
		
		```js
		response.setHeader('Set-Cookie', ['type=ninja', 'language=javascript']);
		```
		
		Attempting to set a header field name or value that contains invalid characters
		will result in a `TypeError` being thrown.
		
		When headers have been set with `response.setHeader()`, they will be merged
		with any headers passed to `response.writeHead()`, with the headers passed
		to `response.writeHead()` given precedence.
		
		```js
		// Returns content-type = text/plain
		const server = http2.createServer((req, res) => {
		  res.setHeader('Content-Type', 'text/html; charset=utf-8');
		  res.setHeader('X-Foo', 'bar');
		  res.writeHead(200, { 'Content-Type': 'text/plain; charset=utf-8' });
		  res.end('ok');
		});
		```
	**/
	function setHeader(name:String, value:ts.AnyOf3<String, Float, haxe.ds.ReadOnlyArray<String>>):Void;
	/**
		Sets the `Http2Stream`'s timeout value to `msecs`. If a callback is
		provided, then it is added as a listener on the `'timeout'` event on
		the response object.
		
		If no `'timeout'` listener is added to the request, the response, or
		the server, then `Http2Stream` s are destroyed when they time out. If a
		handler is assigned to the request, the response, or the server's `'timeout'` events, timed out sockets must be handled explicitly.
	**/
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	/**
		If this method is called and `response.writeHead()` has not been called,
		it will switch to implicit header mode and flush the implicit headers.
		
		This sends a chunk of the response body. This method may
		be called multiple times to provide successive parts of the body.
		
		In the `node:http` module, the response body is omitted when the
		request is a HEAD request. Similarly, the `204` and `304` responses _must not_ include a message body.
		
		`chunk` can be a string or a buffer. If `chunk` is a string,
		the second parameter specifies how to encode it into a byte stream.
		By default the `encoding` is `'utf8'`. `callback` will be called when this chunk
		of data is flushed.
		
		This is the raw HTTP body and has nothing to do with higher-level multi-part
		body encodings that may be used.
		
		The first time `response.write()` is called, it will send the buffered
		header information and the first chunk of the body to the client. The second
		time `response.write()` is called, Node.js assumes data will be streamed,
		and sends the new data separately. That is, the response is buffered up to the
		first chunk of the body.
		
		Returns `true` if the entire data was flushed successfully to the kernel
		buffer. Returns `false` if all or part of the data was queued in user memory.`'drain'` will be emitted when the buffer is free again.
	**/
	@:overload(function(chunk:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, encoding:global.nodejs.BufferEncoding, ?callback:(err:js.lib.Error) -> Void):Bool { })
	function write(chunk:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?callback:(err:js.lib.Error) -> Void):Bool;
	/**
		Sends a status `100 Continue` to the client, indicating that the request body
		should be sent. See the `'checkContinue'` event on `Http2Server` and `Http2SecureServer`.
	**/
	function writeContinue():Void;
	/**
		Sends a status `103 Early Hints` to the client with a Link header,
		indicating that the user agent can preload/preconnect the linked resources.
		The `hints` is an object containing the values of headers to be sent with
		early hints message.
		
		**Example**
		
		```js
		const earlyHintsLink = '</styles.css>; rel=preload; as=style';
		response.writeEarlyHints({
		  'link': earlyHintsLink,
		});
		
		const earlyHintsLinks = [
		  '</styles.css>; rel=preload; as=style',
		  '</scripts.js>; rel=preload; as=script',
		];
		response.writeEarlyHints({
		  'link': earlyHintsLinks,
		});
		```
	**/
	function writeEarlyHints(hints:haxe.DynamicAccess<ts.AnyOf2<String, Array<String>>>):Void;
	/**
		Sends a response header to the request. The status code is a 3-digit HTTP
		status code, like `404`. The last argument, `headers`, are the response headers.
		
		Returns a reference to the `Http2ServerResponse`, so that calls can be chained.
		
		For compatibility with `HTTP/1`, a human-readable `statusMessage` may be
		passed as the second argument. However, because the `statusMessage` has no
		meaning within HTTP/2, the argument will have no effect and a process warning
		will be emitted.
		
		```js
		const body = 'hello world';
		response.writeHead(200, {
		  'Content-Length': Buffer.byteLength(body),
		  'Content-Type': 'text/plain; charset=utf-8',
		});
		```
		
		`Content-Length` is given in bytes not characters. The`Buffer.byteLength()` API may be used to determine the number of bytes in a
		given encoding. On outbound messages, Node.js does not check if Content-Length
		and the length of the body being transmitted are equal or not. However, when
		receiving messages, Node.js will automatically reject messages when the `Content-Length` does not match the actual payload size.
		
		This method may be called at most one time on a message before `response.end()` is called.
		
		If `response.write()` or `response.end()` are called before calling
		this, the implicit/mutable headers will be calculated and call this function.
		
		When headers have been set with `response.setHeader()`, they will be merged
		with any headers passed to `response.writeHead()`, with the headers passed
		to `response.writeHead()` given precedence.
		
		```js
		// Returns content-type = text/plain
		const server = http2.createServer((req, res) => {
		  res.setHeader('Content-Type', 'text/html; charset=utf-8');
		  res.setHeader('X-Foo', 'bar');
		  res.writeHead(200, { 'Content-Type': 'text/plain; charset=utf-8' });
		  res.end('ok');
		});
		```
		
		Attempting to set a header field name or value that contains invalid characters
		will result in a `TypeError` being thrown.
	**/
	@:overload(function(statusCode:Float, statusMessage:String, ?headers:node.http.OutgoingHttpHeaders):Http2ServerResponse<Request> { })
	function writeHead(statusCode:Float, ?headers:node.http.OutgoingHttpHeaders):Http2ServerResponse<Request>;
	/**
		Call `http2stream.pushStream()` with the given headers, and wrap the
		given `Http2Stream` on a newly created `Http2ServerResponse` as the callback
		parameter if successful. When `Http2ServerRequest` is closed, the callback is
		called with an error `ERR_HTTP2_INVALID_STREAM`.
	**/
	function createPushResponse(headers:node.http.OutgoingHttpHeaders, callback:(err:Null<js.lib.Error>, res:Http2ServerResponse<Http2ServerRequest>) -> Void):Void;
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse<Request> { })
	function addListener(event:String, listener:() -> Void):Http2ServerResponse<Request>;
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
	@:overload(function(event:String, error:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, src:node.stream.stream.Readable):Bool { })
	@:overload(function(event:String, src:node.stream.stream.Readable):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse<Request> { })
	function on(event:String, listener:() -> Void):Http2ServerResponse<Request>;
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse<Request> { })
	function once(event:String, listener:() -> Void):Http2ServerResponse<Request>;
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse<Request> { })
	function prependListener(event:String, listener:() -> Void):Http2ServerResponse<Request>;
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse<Request> { })
	function prependOnceListener(event:String, listener:() -> Void):Http2ServerResponse<Request>;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):Http2ServerResponse<Request>;
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
	function destroy(?error:js.lib.Error):Http2ServerResponse<Request>;
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Http2ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse<Request> { })
	function removeListener(event:String, listener:() -> Void):Http2ServerResponse<Request>;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse<Request>;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Http2ServerResponse<Request>;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Http2ServerResponse<Request>;
	static var prototype : Http2ServerResponse<Dynamic>;
}