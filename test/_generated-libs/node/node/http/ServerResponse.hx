package node.http;

/**
	This object is created internally by an HTTP server, not by the user. It is
	passed as the second parameter to the `'request'` event.
**/
@:jsRequire("http", "ServerResponse") extern class ServerResponse<Request:(IncomingMessage)> extends OutgoingMessage<Request> {
	function new(req:Request);
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
		When using implicit headers (not calling `response.writeHead()` explicitly),
		this property controls the status message that will be sent to the client when
		the headers get flushed. If this is left as `undefined` then the standard
		message for the status code will be used.
		
		```js
		response.statusMessage = 'Not found';
		```
		
		After response header was sent to the client, this property indicates the
		status message which was sent out.
	**/
	var statusMessage : String;
	/**
		If set to `true`, Node.js will check whether the `Content-Length` header value and the size of the body, in bytes, are equal.
		Mismatching the `Content-Length` header value will result
		in an `Error` being thrown, identified by `code:``'ERR_HTTP_CONTENT_LENGTH_MISMATCH'`.
	**/
	var strictContentLength : Bool;
	function assignSocket(socket:node.net.Socket):Void;
	function detachSocket(socket:node.net.Socket):Void;
	/**
		Sends an HTTP/1.1 100 Continue message to the client, indicating that
		the request body should be sent. See the `'checkContinue'` event on `Server`.
	**/
	function writeContinue(?callback:() -> Void):Void;
	/**
		Sends an HTTP/1.1 103 Early Hints message to the client with a Link header,
		indicating that the user agent can preload/preconnect the linked resources.
		The `hints` is an object containing the values of headers to be sent with
		early hints message. The optional `callback` argument will be called when
		the response message has been written.
		
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
		  'x-trace-id': 'id for diagnostics',
		});
		
		const earlyHintsCallback = () => console.log('early hints message sent');
		response.writeEarlyHints({
		  'link': earlyHintsLinks,
		}, earlyHintsCallback);
		```
	**/
	function writeEarlyHints(hints:haxe.DynamicAccess<ts.AnyOf2<String, Array<String>>>, ?callback:() -> Void):Void;
	/**
		Sends a response header to the request. The status code is a 3-digit HTTP
		status code, like `404`. The last argument, `headers`, are the response headers.
		Optionally one can give a human-readable `statusMessage` as the second
		argument.
		
		`headers` may be an `Array` where the keys and values are in the same list.
		It is _not_ a list of tuples. So, the even-numbered offsets are key values,
		and the odd-numbered offsets are the associated values. The array is in the same
		format as `request.rawHeaders`.
		
		Returns a reference to the `ServerResponse`, so that calls can be chained.
		
		```js
		const body = 'hello world';
		response
		  .writeHead(200, {
		    'Content-Length': Buffer.byteLength(body),
		    'Content-Type': 'text/plain',
		  })
		  .end(body);
		```
		
		This method must only be called once on a message and it must
		be called before `response.end()` is called.
		
		If `response.write()` or `response.end()` are called before calling
		this, the implicit/mutable headers will be calculated and call this function.
		
		When headers have been set with `response.setHeader()`, they will be merged
		with any headers passed to `response.writeHead()`, with the headers passed
		to `response.writeHead()` given precedence.
		
		If this method is called and `response.setHeader()` has not been called,
		it will directly write the supplied header values onto the network channel
		without caching internally, and the `response.getHeader()` on the header
		will not yield the expected result. If progressive population of headers is
		desired with potential future retrieval and modification, use `response.setHeader()` instead.
		
		```js
		// Returns content-type = text/plain
		const server = http.createServer((req, res) => {
		  res.setHeader('Content-Type', 'text/html');
		  res.setHeader('X-Foo', 'bar');
		  res.writeHead(200, { 'Content-Type': 'text/plain' });
		  res.end('ok');
		});
		```
		
		`Content-Length` is read in bytes, not characters. Use `Buffer.byteLength()` to determine the length of the body in bytes. Node.js
		will check whether `Content-Length` and the length of the body which has
		been transmitted are equal or not.
		
		Attempting to set a header field name or value that contains invalid characters
		will result in a `Error` being thrown.
	**/
	@:overload(function(statusCode:Float, ?headers:ts.AnyOf2<OutgoingHttpHeaders, Array<OutgoingHttpHeader>>):ServerResponse<Request> { })
	function writeHead(statusCode:Float, ?statusMessage:String, ?headers:ts.AnyOf2<OutgoingHttpHeaders, Array<OutgoingHttpHeader>>):ServerResponse<Request>;
	/**
		Sends a HTTP/1.1 102 Processing message to the client, indicating that
		the request body should be sent.
	**/
	function writeProcessing(?callback:() -> Void):Void;
	/**
		Once a socket is associated with the message and is connected, `socket.setTimeout()` will be called with `msecs` as the first parameter.
	**/
	function setTimeout(msecs:Float, ?callback:() -> Void):ServerResponse<Request>;
	/**
		Sets a single header value. If the header already exists in the to-be-sent
		headers, its value will be replaced. Use an array of strings to send multiple
		headers with the same name.
	**/
	function setHeader(name:String, value:ts.AnyOf3<String, Float, haxe.ds.ReadOnlyArray<String>>):ServerResponse<Request>;
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
	function setHeaders(headers:ts.AnyOf2<js.html.Headers, js.lib.Map<String, ts.AnyOf3<String, Float, haxe.ds.ReadOnlyArray<String>>>>):ServerResponse<Request>;
	/**
		Append a single header value to the header object.
		
		If the value is an array, this is equivalent to calling this method multiple
		times.
		
		If there were no previous values for the header, this is equivalent to calling `outgoingMessage.setHeader(name, value)`.
		
		Depending of the value of `options.uniqueHeaders` when the client request or the
		server were created, this will end up in the header being sent multiple times or
		a single time with values joined using `; `.
	**/
	function appendHeader(name:String, value:ts.AnyOf2<String, haxe.ds.ReadOnlyArray<String>>):ServerResponse<Request>;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):ServerResponse<Request>;
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
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):ServerResponse<Request> { })
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?cb:() -> Void):ServerResponse<Request> { })
	function end(?cb:() -> Void):ServerResponse<Request>;
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
	function destroy(?error:js.lib.Error):ServerResponse<Request>;
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
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse<Request> { })
	function addListener(event:String, listener:() -> Void):ServerResponse<Request>;
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
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse<Request> { })
	function on(event:String, listener:() -> Void):ServerResponse<Request>;
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
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse<Request> { })
	function once(event:String, listener:() -> Void):ServerResponse<Request>;
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
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse<Request> { })
	function prependListener(event:String, listener:() -> Void):ServerResponse<Request>;
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
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse<Request> { })
	function prependOnceListener(event:String, listener:() -> Void):ServerResponse<Request>;
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
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ServerResponse<Request> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse<Request> { })
	function removeListener(event:String, listener:() -> Void):ServerResponse<Request>;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse<Request>;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):ServerResponse<Request>;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):ServerResponse<Request>;
	static var prototype : ServerResponse<Dynamic>;
}