package node.http2;

/**
	A `Http2ServerRequest` object is created by
	{@link
	Server
	}
	or
	{@link
	SecureServer
	}
	and passed as the first argument to the `'request'` event. It may be used to access a request status,
	headers, and
	data.
**/
@:jsRequire("http2", "Http2ServerRequest") extern class Http2ServerRequest extends node.stream.stream.Readable {
	function new(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, options:node.stream.stream.ReadableOptions<node.stream.stream.Readable>, rawHeaders:haxe.ds.ReadOnlyArray<String>);
	/**
		The `request.aborted` property will be `true` if the request has
		been aborted.
	**/
	final aborted : Bool;
	/**
		The request authority pseudo header field. Because HTTP/2 allows requests
		to set either `:authority` or `host`, this value is derived from `req.headers[':authority']` if present. Otherwise, it is derived from `req.headers['host']`.
	**/
	final authority : String;
	/**
		See `request.socket`.
	**/
	final connection : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	/**
		The `request.complete` property will be `true` if the request has
		been completed, aborted, or destroyed.
	**/
	final complete : Bool;
	/**
		The request/response headers object.
		
		Key-value pairs of header names and values. Header names are lower-cased.
		
		```js
		// Prints something like:
		//
		// { 'user-agent': 'curl/7.22.0',
		//   host: '127.0.0.1:8000',
		//   accept: '*' }
		console.log(request.headers);
		```
		
		See `HTTP/2 Headers Object`.
		
		In HTTP/2, the request path, host name, protocol, and method are represented as
		special headers prefixed with the `:` character (e.g. `':path'`). These special
		headers will be included in the `request.headers` object. Care must be taken not
		to inadvertently modify these special headers or errors may occur. For instance,
		removing all headers from the request will cause errors to occur:
		
		```js
		removeAllHeaders(request.headers);
		assert(request.url);   // Fails because the :path header has been removed
		```
	**/
	final headers : IncomingHttpHeaders;
	/**
		In case of server request, the HTTP version sent by the client. In the case of
		client response, the HTTP version of the connected-to server. Returns `'2.0'`.
		
		Also `message.httpVersionMajor` is the first integer and `message.httpVersionMinor` is the second.
	**/
	final httpVersion : String;
	final httpVersionMinor : Float;
	final httpVersionMajor : Float;
	/**
		The request method as a string. Read-only. Examples: `'GET'`, `'DELETE'`.
	**/
	final method : String;
	/**
		The raw request/response headers list exactly as they were received.
		
		The keys and values are in the same list. It is _not_ a
		list of tuples. So, the even-numbered offsets are key values, and the
		odd-numbered offsets are the associated values.
		
		Header names are not lowercased, and duplicates are not merged.
		
		```js
		// Prints something like:
		//
		// [ 'user-agent',
		//   'this is invalid because there can be only one',
		//   'User-Agent',
		//   'curl/7.22.0',
		//   'Host',
		//   '127.0.0.1:8000',
		//   'ACCEPT',
		//   '*' ]
		console.log(request.rawHeaders);
		```
	**/
	final rawHeaders : Array<String>;
	/**
		The raw request/response trailer keys and values exactly as they were
		received. Only populated at the `'end'` event.
	**/
	final rawTrailers : Array<String>;
	/**
		The request scheme pseudo header field indicating the scheme
		portion of the target URL.
	**/
	final scheme : String;
	/**
		Returns a `Proxy` object that acts as a `net.Socket` (or `tls.TLSSocket`) but
		applies getters, setters, and methods based on HTTP/2 logic.
		
		`destroyed`, `readable`, and `writable` properties will be retrieved from and
		set on `request.stream`.
		
		`destroy`, `emit`, `end`, `on` and `once` methods will be called on `request.stream`.
		
		`setTimeout` method will be called on `request.stream.session`.
		
		`pause`, `read`, `resume`, and `write` will throw an error with code `ERR_HTTP2_NO_SOCKET_MANIPULATION`. See `Http2Session and Sockets` for
		more information.
		
		All other interactions will be routed directly to the socket. With TLS support,
		use `request.socket.getPeerCertificate()` to obtain the client's
		authentication details.
	**/
	final socket : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	/**
		The `Http2Stream` object backing the request.
	**/
	final stream : ServerHttp2Stream;
	/**
		The request/response trailers object. Only populated at the `'end'` event.
	**/
	final trailers : IncomingHttpHeaders;
	/**
		Request URL string. This contains only the URL that is present in the actual
		HTTP request. If the request is:
		
		```http
		GET /status?name=ryan HTTP/1.1
		Accept: text/plain
		```
		
		Then `request.url` will be:
		
		```js
		'/status?name=ryan'
		```
		
		To parse the url into its parts, `new URL()` can be used:
		
		```console
		$ node
		> new URL('/status?name=ryan', 'http://example.com')
		URL {
		  href: 'http://example.com/status?name=ryan',
		  origin: 'http://example.com',
		  protocol: 'http:',
		  username: '',
		  password: '',
		  host: 'example.com',
		  hostname: 'example.com',
		  port: '',
		  pathname: '/status',
		  search: '?name=ryan',
		  searchParams: URLSearchParams { 'name' => 'ryan' },
		  hash: ''
		}
		```
	**/
	var url : String;
	/**
		Sets the `Http2Stream`'s timeout value to `msecs`. If a callback is
		provided, then it is added as a listener on the `'timeout'` event on
		the response object.
		
		If no `'timeout'` listener is added to the request, the response, or
		the server, then `Http2Stream`s are destroyed when they time out. If a
		handler is assigned to the request, the response, or the server's `'timeout'`events, timed out sockets must be handled explicitly.
	**/
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	/**
		The `readable.read()` method reads data out of the internal buffer and
		returns it. If no data is available to be read, `null` is returned. By default,
		the data is returned as a `Buffer` object unless an encoding has been
		specified using the `readable.setEncoding()` method or the stream is operating
		in object mode.
		
		The optional `size` argument specifies a specific number of bytes to read. If
		`size` bytes are not available to be read, `null` will be returned _unless_ the
		stream has ended, in which case all of the data remaining in the internal buffer
		will be returned.
		
		If the `size` argument is not specified, all of the data contained in the
		internal buffer will be returned.
		
		The `size` argument must be less than or equal to 1 GiB.
		
		The `readable.read()` method should only be called on `Readable` streams
		operating in paused mode. In flowing mode, `readable.read()` is called
		automatically until the internal buffer is fully drained.
		
		```js
		const readable = getReadableStreamSomehow();
		
		// 'readable' may be triggered multiple times as data is buffered in
		readable.on('readable', () => {
		  let chunk;
		  console.log('Stream is readable (new data received in buffer)');
		  // Use a loop to make sure we read all currently available data
		  while (null !== (chunk = readable.read())) {
		    console.log(`Read ${chunk.length} bytes of data...`);
		  }
		});
		
		// 'end' will be triggered once when there is no more data available
		readable.on('end', () => {
		  console.log('Reached end of stream.');
		});
		```
		
		Each call to `readable.read()` returns a chunk of data, or `null`. The chunks
		are not concatenated. A `while` loop is necessary to consume all data
		currently in the buffer. When reading a large file `.read()` may return `null`,
		having consumed all buffered content so far, but there is still more data to
		come not yet buffered. In this case a new `'readable'` event will be emitted
		when there is more data in the buffer. Finally the `'end'` event will be
		emitted when there is no more data to come.
		
		Therefore to read a file's whole contents from a `readable`, it is necessary
		to collect chunks across multiple `'readable'` events:
		
		```js
		const chunks = [];
		
		readable.on('readable', () => {
		  let chunk;
		  while (null !== (chunk = readable.read())) {
		    chunks.push(chunk);
		  }
		});
		
		readable.on('end', () => {
		  const content = chunks.join('');
		});
		```
		
		A `Readable` stream in object mode will always return a single item from
		a call to `readable.read(size)`, regardless of the value of the `size` argument.
		
		If the `readable.read()` method returns a chunk of data, a `'data'` event will
		also be emitted.
		
		Calling
		{@link
		read
		}
		after the `'end'` event has
		been emitted will return `null`. No runtime error will be raised.
	**/
	function read(?size:Float):Null<ts.AnyOf2<String, node.buffer.NonSharedBuffer>>;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
	**/
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function addListener(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest;
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
	@:overload(function(event:String, chunk:ts.AnyOf2<String, node.buffer.NonSharedBuffer>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String, hadError:Bool, code:Float):Bool;
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function on(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest;
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function once(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest;
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function prependListener(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest;
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function prependOnceListener(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest;
	/**
		The `readable.setEncoding()` method sets the character encoding for
		data read from the `Readable` stream.
		
		By default, no encoding is assigned and stream data will be returned as `Buffer` objects. Setting an encoding causes the stream data
		to be returned as strings of the specified encoding rather than as `Buffer` objects. For instance, calling `readable.setEncoding('utf8')` will cause the
		output data to be interpreted as UTF-8 data, and passed as strings. Calling `readable.setEncoding('hex')` will cause the data to be encoded in hexadecimal
		string format.
		
		The `Readable` stream will properly handle multi-byte characters delivered
		through the stream that would otherwise become improperly decoded if simply
		pulled from the stream as `Buffer` objects.
		
		```js
		const readable = getReadableStreamSomehow();
		readable.setEncoding('utf8');
		readable.on('data', (chunk) => {
		  assert.equal(typeof chunk, 'string');
		  console.log('Got %d characters of string data:', chunk.length);
		});
		```
	**/
	function setEncoding(encoding:global.nodejs.BufferEncoding):Http2ServerRequest;
	/**
		The `readable.pause()` method will cause a stream in flowing mode to stop
		emitting `'data'` events, switching out of flowing mode. Any data that
		becomes available will remain in the internal buffer.
		
		```js
		const readable = getReadableStreamSomehow();
		readable.on('data', (chunk) => {
		  console.log(`Received ${chunk.length} bytes of data.`);
		  readable.pause();
		  console.log('There will be no additional data for 1 second.');
		  setTimeout(() => {
		    console.log('Now data will start flowing again.');
		    readable.resume();
		  }, 1000);
		});
		```
		
		The `readable.pause()` method has no effect if there is a `'readable'` event listener.
	**/
	function pause():Http2ServerRequest;
	/**
		The `readable.resume()` method causes an explicitly paused `Readable` stream to
		resume emitting `'data'` events, switching the stream into flowing mode.
		
		The `readable.resume()` method can be used to fully consume the data from a
		stream without actually processing any of that data:
		
		```js
		getReadableStreamSomehow()
		  .resume()
		  .on('end', () => {
		    console.log('Reached the end, but did not read anything.');
		  });
		```
		
		The `readable.resume()` method has no effect if there is a `'readable'` event listener.
	**/
	function resume():Http2ServerRequest;
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
	function unpipe(?destination:global.nodejs.WritableStream):Http2ServerRequest;
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
	function wrap(stream:global.nodejs.ReadableStream):Http2ServerRequest;
	/**
		Destroy the stream. Optionally emit an `'error'` event, and emit a `'close'` event (unless `emitClose` is set to `false`). After this call, the readable
		stream will release any internal resources and subsequent calls to `push()` will be ignored.
		
		Once `destroy()` has been called any further calls will be a no-op and no
		further errors except from `_destroy()` may be emitted as `'error'`.
		
		Implementors should not override this method, but instead implement `readable._destroy()`.
	**/
	function destroy(?error:js.lib.Error):Http2ServerRequest;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function removeListener(event:String, listener:() -> Void):Http2ServerRequest;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Http2ServerRequest;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Http2ServerRequest;
	static var prototype : Http2ServerRequest;
}