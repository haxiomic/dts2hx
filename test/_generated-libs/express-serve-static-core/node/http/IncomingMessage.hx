package node.http;

/**
	An `IncomingMessage` object is created by
	{@link
	Server
	}
	or
	{@link
	ClientRequest
	}
	and passed as the first argument to the `'request'` and `'response'` event respectively. It may be used to
	access response
	status, headers, and data.
	
	Different from its `socket` value which is a subclass of `stream.Duplex`, the `IncomingMessage` itself extends `stream.Readable` and is created separately to
	parse and emit the incoming HTTP headers and payload, as the underlying socket
	may be reused multiple times in case of keep-alive.
**/
@:jsRequire("http", "IncomingMessage") extern class IncomingMessage extends node.stream.stream.Readable {
	function new(socket:node.net.Socket);
	/**
		The `message.aborted` property will be `true` if the request has
		been aborted.
	**/
	var aborted : Bool;
	/**
		In case of server request, the HTTP version sent by the client. In the case of
		client response, the HTTP version of the connected-to server.
		Probably either `'1.1'` or `'1.0'`.
		
		Also `message.httpVersionMajor` is the first integer and `message.httpVersionMinor` is the second.
	**/
	var httpVersion : String;
	var httpVersionMajor : Float;
	var httpVersionMinor : Float;
	/**
		The `message.complete` property will be `true` if a complete HTTP message has
		been received and successfully parsed.
		
		This property is particularly useful as a means of determining if a client or
		server fully transmitted a message before a connection was terminated:
		
		```js
		const req = http.request({
		  host: '127.0.0.1',
		  port: 8080,
		  method: 'POST',
		}, (res) => {
		  res.resume();
		  res.on('end', () => {
		    if (!res.complete)
		      console.error(
		        'The connection was terminated while the message was still being sent');
		  });
		});
		```
	**/
	var complete : Bool;
	/**
		Alias for `message.socket`.
	**/
	var connection : node.net.Socket;
	/**
		The `net.Socket` object associated with the connection.
		
		With HTTPS support, use `request.socket.getPeerCertificate()` to obtain the
		client's authentication details.
		
		This property is guaranteed to be an instance of the `net.Socket` class,
		a subclass of `stream.Duplex`, unless the user specified a socket
		type other than `net.Socket` or internally nulled.
	**/
	var socket : node.net.Socket;
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
		
		Duplicates in raw headers are handled in the following ways, depending on the
		header name:
		
		* Duplicates of `age`, `authorization`, `content-length`, `content-type`, `etag`, `expires`, `from`, `host`, `if-modified-since`, `if-unmodified-since`, `last-modified`, `location`,
		`max-forwards`, `proxy-authorization`, `referer`, `retry-after`, `server`, or `user-agent` are discarded.
		To allow duplicate values of the headers listed above to be joined,
		use the option `joinDuplicateHeaders` in
		{@link
		request
		}
		and
		{@link
		createServer
		}
		. See RFC 9110 Section 5.3 for more
		information.
		* `set-cookie` is always an array. Duplicates are added to the array.
		* For duplicate `cookie` headers, the values are joined together with `; `.
		* For all other headers, the values are joined together with `, `.
	**/
	var headers : IncomingHttpHeaders;
	/**
		Similar to `message.headers`, but there is no join logic and the values are
		always arrays of strings, even for headers received just once.
		
		```js
		// Prints something like:
		//
		// { 'user-agent': ['curl/7.22.0'],
		//   host: ['127.0.0.1:8000'],
		//   accept: ['*'] }
		console.log(request.headersDistinct);
		```
	**/
	var headersDistinct : global.nodejs.Dict<Array<String>>;
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
	var rawHeaders : Array<String>;
	/**
		The request/response trailers object. Only populated at the `'end'` event.
	**/
	var trailers : global.nodejs.Dict<String>;
	/**
		Similar to `message.trailers`, but there is no join logic and the values are
		always arrays of strings, even for headers received just once.
		Only populated at the `'end'` event.
	**/
	var trailersDistinct : global.nodejs.Dict<Array<String>>;
	/**
		The raw request/response trailer keys and values exactly as they were
		received. Only populated at the `'end'` event.
	**/
	var rawTrailers : Array<String>;
	/**
		Calls `message.socket.setTimeout(msecs, callback)`.
	**/
	function setTimeout(msecs:Float, ?callback:() -> Void):IncomingMessage;
	/**
		**Only valid for request obtained from
		{@link
		Server
		}
		.**
		
		The request method as a string. Read only. Examples: `'GET'`, `'DELETE'`.
	**/
	@:optional
	var method : String;
	/**
		**Only valid for request obtained from
		{@link
		Server
		}
		.**
		
		Request URL string. This contains only the URL that is present in the actual
		HTTP request. Take the following request:
		
		```http
		GET /status?name=ryan HTTP/1.1
		Accept: text/plain
		```
		
		To parse the URL into its parts:
		
		```js
		new URL(`http://${process.env.HOST ?? 'localhost'}${request.url}`);
		```
		
		When `request.url` is `'/status?name=ryan'` and `process.env.HOST` is undefined:
		
		```console
		$ node
		> new URL(`http://${process.env.HOST ?? 'localhost'}${request.url}`);
		URL {
		  href: 'http://localhost/status?name=ryan',
		  origin: 'http://localhost',
		  protocol: 'http:',
		  username: '',
		  password: '',
		  host: 'localhost',
		  hostname: 'localhost',
		  port: '',
		  pathname: '/status',
		  search: '?name=ryan',
		  searchParams: URLSearchParams { 'name' => 'ryan' },
		  hash: ''
		}
		```
		
		Ensure that you set `process.env.HOST` to the server's host name, or consider replacing this part entirely. If using `req.headers.host`, ensure proper
		validation is used, as clients may specify a custom `Host` header.
	**/
	@:optional
	var url : String;
	/**
		**Only valid for response obtained from
		{@link
		ClientRequest
		}
		.**
		
		The 3-digit HTTP response status code. E.G. `404`.
	**/
	@:optional
	var statusCode : Float;
	/**
		**Only valid for response obtained from
		{@link
		ClientRequest
		}
		.**
		
		The HTTP response status message (reason phrase). E.G. `OK` or `Internal Server Error`.
	**/
	@:optional
	var statusMessage : String;
	/**
		Calls `destroy()` on the socket that received the `IncomingMessage`. If `error` is provided, an `'error'` event is emitted on the socket and `error` is passed
		as an argument to any listeners on the event.
	**/
	function destroy(?error:js.lib.Error):IncomingMessage;
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
	function setEncoding(encoding:global.nodejs.BufferEncoding):IncomingMessage;
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
	function pause():IncomingMessage;
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
	function resume():IncomingMessage;
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
	function unpipe(?destination:global.nodejs.WritableStream):IncomingMessage;
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
	function wrap(stream:global.nodejs.ReadableStream):IncomingMessage;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function addListener(event:String, listener:() -> Void):IncomingMessage;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function on(event:String, listener:() -> Void):IncomingMessage;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function once(event:String, listener:() -> Void):IncomingMessage;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function prependListener(event:String, listener:() -> Void):IncomingMessage;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function prependOnceListener(event:String, listener:() -> Void):IncomingMessage;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function removeListener(event:String, listener:() -> Void):IncomingMessage;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):IncomingMessage;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):IncomingMessage;
	static var prototype : IncomingMessage;
}