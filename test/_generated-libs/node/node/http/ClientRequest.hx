package node.http;

/**
	This object is created internally and returned from
	{@link
	request
	}
	. It
	represents an _in-progress_ request whose header has already been queued. The
	header is still mutable using the `setHeader(name, value)`, `getHeader(name)`, `removeHeader(name)` API. The actual header will
	be sent along with the first data chunk or when calling `request.end()`.
	
	To get the response, add a listener for `'response'` to the request object. `'response'` will be emitted from the request object when the response
	headers have been received. The `'response'` event is executed with one
	argument which is an instance of
	{@link
	IncomingMessage
	}
	.
	
	During the `'response'` event, one can add listeners to the
	response object; particularly to listen for the `'data'` event.
	
	If no `'response'` handler is added, then the response will be
	entirely discarded. However, if a `'response'` event handler is added,
	then the data from the response object **must** be consumed, either by
	calling `response.read()` whenever there is a `'readable'` event, or
	by adding a `'data'` handler, or by calling the `.resume()` method.
	Until the data is consumed, the `'end'` event will not fire. Also, until
	the data is read it will consume memory that can eventually lead to a
	'process out of memory' error.
	
	For backward compatibility, `res` will only emit `'error'` if there is an `'error'` listener registered.
	
	Set `Content-Length` header to limit the response body size.
	If `response.strictContentLength` is set to `true`, mismatching the `Content-Length` header value will result in an `Error` being thrown,
	identified by `code:``'ERR_HTTP_CONTENT_LENGTH_MISMATCH'`.
	
	`Content-Length` value should be in bytes, not characters. Use `Buffer.byteLength()` to determine the length of the body in bytes.
**/
@:jsRequire("http", "ClientRequest") extern class ClientRequest extends OutgoingMessage<IncomingMessage> {
	function new(url:ts.AnyOf3<String, node.url.URL, ClientRequestArgs>, ?cb:(res:IncomingMessage) -> Void);
	/**
		The `request.aborted` property will be `true` if the request has
		been aborted.
	**/
	var aborted : Bool;
	/**
		The request host.
	**/
	var host : String;
	/**
		The request protocol.
	**/
	var protocol : String;
	/**
		When sending request through a keep-alive enabled agent, the underlying socket
		might be reused. But if server closes connection at unfortunate time, client
		may run into a 'ECONNRESET' error.
		
		```js
		import http from 'node:http';
		
		// Server has a 5 seconds keep-alive timeout by default
		http
		  .createServer((req, res) => {
		    res.write('hello\n');
		    res.end();
		  })
		  .listen(3000);
		
		setInterval(() => {
		  // Adapting a keep-alive agent
		  http.get('http://localhost:3000', { agent }, (res) => {
		    res.on('data', (data) => {
		      // Do nothing
		    });
		  });
		}, 5000); // Sending request on 5s interval so it's easy to hit idle timeout
		```
		
		By marking a request whether it reused socket or not, we can do
		automatic error retry base on it.
		
		```js
		import http from 'node:http';
		const agent = new http.Agent({ keepAlive: true });
		
		function retriableRequest() {
		  const req = http
		    .get('http://localhost:3000', { agent }, (res) => {
		      // ...
		    })
		    .on('error', (err) => {
		      // Check if retry is needed
		      if (req.reusedSocket &#x26;&#x26; err.code === 'ECONNRESET') {
		        retriableRequest();
		      }
		    });
		}
		
		retriableRequest();
		```
	**/
	var reusedSocket : Bool;
	/**
		Limits maximum response headers count. If set to 0, no limit will be applied.
	**/
	var maxHeadersCount : Float;
	/**
		The request method.
	**/
	var method : String;
	/**
		The request path.
	**/
	var path : String;
	/**
		Marks the request as aborting. Calling this will cause remaining data
		in the response to be dropped and the socket to be destroyed.
	**/
	function abort():Void;
	function onSocket(socket:node.net.Socket):Void;
	/**
		Once a socket is assigned to this request and is connected `socket.setTimeout()` will be called.
	**/
	function setTimeout(timeout:Float, ?callback:() -> Void):ClientRequest;
	/**
		Once a socket is assigned to this request and is connected `socket.setNoDelay()` will be called.
	**/
	function setNoDelay(?noDelay:Bool):Void;
	/**
		Once a socket is assigned to this request and is connected `socket.setKeepAlive()` will be called.
	**/
	function setSocketKeepAlive(?enable:Bool, ?initialDelay:Float):Void;
	/**
		Returns an array containing the unique names of the current outgoing raw
		headers. Header names are returned with their exact casing being set.
		
		```js
		request.setHeader('Foo', 'bar');
		request.setHeader('Set-Cookie', ['foo=bar', 'bar=baz']);
		
		const headerNames = request.getRawHeaderNames();
		// headerNames === ['Foo', 'Set-Cookie']
		```
	**/
	function getRawHeaderNames():Array<String>;
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
	@:overload(function(event:String, listener:(response:IncomingMessage, socket:node.net.Socket, head:node.buffer.NonSharedBuffer) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(info:InformationEvent) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(response:IncomingMessage) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(response:IncomingMessage, socket:node.net.Socket, head:node.buffer.NonSharedBuffer) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientRequest { })
	function addListener(event:String, listener:() -> Void):ClientRequest;
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
	@:overload(function(event:String, listener:(response:IncomingMessage, socket:node.net.Socket, head:node.buffer.NonSharedBuffer) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(info:InformationEvent) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(response:IncomingMessage) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(response:IncomingMessage, socket:node.net.Socket, head:node.buffer.NonSharedBuffer) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientRequest { })
	function on(event:String, listener:() -> Void):ClientRequest;
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
	@:overload(function(event:String, listener:(response:IncomingMessage, socket:node.net.Socket, head:node.buffer.NonSharedBuffer) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(info:InformationEvent) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(response:IncomingMessage) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(response:IncomingMessage, socket:node.net.Socket, head:node.buffer.NonSharedBuffer) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientRequest { })
	function once(event:String, listener:() -> Void):ClientRequest;
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
	@:overload(function(event:String, listener:(response:IncomingMessage, socket:node.net.Socket, head:node.buffer.NonSharedBuffer) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(info:InformationEvent) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(response:IncomingMessage) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(response:IncomingMessage, socket:node.net.Socket, head:node.buffer.NonSharedBuffer) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientRequest { })
	function prependListener(event:String, listener:() -> Void):ClientRequest;
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
	@:overload(function(event:String, listener:(response:IncomingMessage, socket:node.net.Socket, head:node.buffer.NonSharedBuffer) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(info:InformationEvent) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(response:IncomingMessage) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(response:IncomingMessage, socket:node.net.Socket, head:node.buffer.NonSharedBuffer) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientRequest { })
	function prependOnceListener(event:String, listener:() -> Void):ClientRequest;
	/**
		Sets a single header value. If the header already exists in the to-be-sent
		headers, its value will be replaced. Use an array of strings to send multiple
		headers with the same name.
	**/
	function setHeader(name:String, value:ts.AnyOf3<String, Float, haxe.ds.ReadOnlyArray<String>>):ClientRequest;
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
	function setHeaders(headers:ts.AnyOf2<js.html.Headers, js.lib.Map<String, ts.AnyOf3<String, Float, haxe.ds.ReadOnlyArray<String>>>>):ClientRequest;
	/**
		Append a single header value to the header object.
		
		If the value is an array, this is equivalent to calling this method multiple
		times.
		
		If there were no previous values for the header, this is equivalent to calling `outgoingMessage.setHeader(name, value)`.
		
		Depending of the value of `options.uniqueHeaders` when the client request or the
		server were created, this will end up in the header being sent multiple times or
		a single time with values joined using `; `.
	**/
	function appendHeader(name:String, value:ts.AnyOf2<String, haxe.ds.ReadOnlyArray<String>>):ClientRequest;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):ClientRequest;
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
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):ClientRequest { })
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?cb:() -> Void):ClientRequest { })
	function end(?cb:() -> Void):ClientRequest;
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
	function destroy(?error:js.lib.Error):ClientRequest;
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
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:() -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):ClientRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientRequest { })
	function removeListener(event:String, listener:() -> Void):ClientRequest;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientRequest;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):ClientRequest;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):ClientRequest;
	static var prototype : ClientRequest;
}