package express_serve_static_core;

typedef Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> = {
	/**
		Return request header.
		
		The `Referrer` header field is special-cased,
		both `Referrer` and `Referer` are interchangeable.
		
		Examples:
		
		    req.get('Content-Type');
		    // => "text/plain"
		
		    req.get('content-type');
		    // => "text/plain"
		
		    req.get('Something');
		    // => undefined
		
		Aliased as `req.header()`.
	**/
	@:overload(function(name:String):Null<String> { })
	function get(name:String):Null<Array<String>>;
	@:overload(function(name:String):Null<String> { })
	function header(name:String):Null<Array<String>>;
	/**
		Check if the given `type(s)` is acceptable, returning
		the best match when true, otherwise `undefined`, in which
		case you should respond with 406 "Not Acceptable".
		
		The `type` value may be a single mime type string
		such as "application/json", the extension name
		such as "json", a comma-delimted list such as "json, html, text/plain",
		or an array `["json", "html", "text/plain"]`. When a list
		or array is given the _best_ match, if any is returned.
		
		Examples:
		
		    // Accept: text/html
		    req.accepts('html');
		    // => "html"
		
		    // Accept: text/*, application/json
		    req.accepts('html');
		    // => "html"
		    req.accepts('text/html');
		    // => "text/html"
		    req.accepts('json, text');
		    // => "json"
		    req.accepts('application/json');
		    // => "application/json"
		
		    // Accept: text/*, application/json
		    req.accepts('image/png');
		    req.accepts('png');
		    // => false
		
		    // Accept: text/*;q=.5, application/json
		    req.accepts(['html', 'json']);
		    req.accepts('html, json');
		    // => "json"
	**/
	@:overload(function(type:String):ts.AnyOf2<String, Bool> { })
	@:overload(function(type:Array<String>):ts.AnyOf2<String, Bool> { })
	@:overload(function(type:haxe.extern.Rest<String>):ts.AnyOf2<String, Bool> { })
	function accepts():Array<String>;
	/**
		Returns the first accepted charset of the specified character sets,
		based on the request's Accept-Charset HTTP header field.
		If none of the specified charsets is accepted, returns false.
		
		For more information, or if you have issues or concerns, see accepts.
	**/
	@:overload(function(charset:String):ts.AnyOf2<String, Bool> { })
	@:overload(function(charset:Array<String>):ts.AnyOf2<String, Bool> { })
	@:overload(function(charset:haxe.extern.Rest<String>):ts.AnyOf2<String, Bool> { })
	function acceptsCharsets():Array<String>;
	/**
		Returns the first accepted encoding of the specified encodings,
		based on the request's Accept-Encoding HTTP header field.
		If none of the specified encodings is accepted, returns false.
		
		For more information, or if you have issues or concerns, see accepts.
	**/
	@:overload(function(encoding:String):ts.AnyOf2<String, Bool> { })
	@:overload(function(encoding:Array<String>):ts.AnyOf2<String, Bool> { })
	@:overload(function(encoding:haxe.extern.Rest<String>):ts.AnyOf2<String, Bool> { })
	function acceptsEncodings():Array<String>;
	/**
		Returns the first accepted language of the specified languages,
		based on the request's Accept-Language HTTP header field.
		If none of the specified languages is accepted, returns false.
		
		For more information, or if you have issues or concerns, see accepts.
	**/
	@:overload(function(lang:String):ts.AnyOf2<String, Bool> { })
	@:overload(function(lang:Array<String>):ts.AnyOf2<String, Bool> { })
	@:overload(function(lang:haxe.extern.Rest<String>):ts.AnyOf2<String, Bool> { })
	function acceptsLanguages():Array<String>;
	/**
		Parse Range header field, capping to the given `size`.
		
		Unspecified ranges such as "0-" require knowledge of your resource length. In
		the case of a byte range this is of course the total number of bytes.
		If the Range header field is not given `undefined` is returned.
		If the Range header field is given, return value is a result of range-parser.
		See more ./types/range-parser/index.d.ts
		
		NOTE: remember that ranges are inclusive, so for example "Range: users=0-3"
		should respond with 4 users when available, not 3.
	**/
	function range(size:Float, ?options:range_parser.Options):Null<ts.AnyOf2<Int, range_parser.Ranges>>;
	/**
		Return an array of Accepted media types
		ordered from highest quality to lowest.
	**/
	var accepted : Array<MediaType>;
	/**
		Check if the incoming request contains the "Content-Type"
		header field, and it contains the give mime `type`.
		
		Examples:
		
		     // With Content-Type: text/html; charset=utf-8
		     req.is('html');
		     req.is('text/html');
		     req.is('text/*');
		     // => true
		
		     // When Content-Type is application/json
		     req.is('json');
		     req.is('application/json');
		     req.is('application/*');
		     // => true
		
		     req.is('html');
		     // => false
	**/
	function is(type:ts.AnyOf2<String, Array<String>>):Null<ts.AnyOf2<String, Bool>>;
	/**
		Return the protocol string "http" or "https"
		when requested with TLS. When the "trust proxy"
		setting is enabled the "X-Forwarded-Proto" header
		field will be trusted. If you're running behind
		a reverse proxy that supplies https for you this
		may be enabled.
	**/
	final protocol : String;
	/**
		Short-hand for:
		
		   req.protocol == 'https'
	**/
	final secure : Bool;
	/**
		Return the remote address, or when
		"trust proxy" is `true` return
		the upstream addr.
		
		Value may be undefined if the `req.socket` is destroyed
		(for example, if the client disconnected).
	**/
	final ip : Null<String>;
	/**
		When "trust proxy" is `true`, parse
		the "X-Forwarded-For" ip address list.
		
		For example if the value were "client, proxy1, proxy2"
		you would receive the array `["client", "proxy1", "proxy2"]`
		where "proxy2" is the furthest down-stream.
	**/
	final ips : Array<String>;
	/**
		Return subdomains as an array.
		
		Subdomains are the dot-separated parts of the host before the main domain of
		the app. By default, the domain of the app is assumed to be the last two
		parts of the host. This can be changed by setting "subdomain offset".
		
		For example, if the domain is "tobi.ferrets.example.com":
		If "subdomain offset" is not set, req.subdomains is `["ferrets", "tobi"]`.
		If "subdomain offset" is 3, req.subdomains is `["tobi"]`.
	**/
	final subdomains : Array<String>;
	/**
		Short-hand for `url.parse(req.url).pathname`.
	**/
	final path : String;
	/**
		Contains the hostname derived from the `Host` HTTP header.
	**/
	final hostname : String;
	/**
		Contains the host derived from the `Host` HTTP header.
	**/
	final host : String;
	/**
		Check if the request is fresh, aka
		Last-Modified and/or the ETag
		still match.
	**/
	final fresh : Bool;
	/**
		Check if the request is stale, aka
		"Last-Modified" and / or the "ETag" for the
		resource has changed.
	**/
	final stale : Bool;
	/**
		Check if the request was an _XMLHttpRequest_.
	**/
	final xhr : Bool;
	var body : ReqBody;
	var cookies : Dynamic;
	/**
		**Only valid for request obtained from
		{@link
		Server
		}
		.**
		
		The request method as a string. Read only. Examples: `'GET'`, `'DELETE'`.
	**/
	var method : String;
	var params : P;
	var query : ReqQuery;
	var route : Dynamic;
	var signedCookies : Dynamic;
	var originalUrl : String;
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
	var url : String;
	var baseUrl : String;
	var app : Application<haxe.DynamicAccess<Dynamic>>;
	/**
		After middleware.init executed, Request will contain res and next properties
		See: express/lib/middleware/init.js
	**/
	@:optional
	var res : Response<ResBody, LocalsObj, Float>;
	@:optional
	@:overload(function(deferToNext:String):Void { })
	@:overload(function(deferToNext:String):Void { })
	dynamic function next(?err:Dynamic):Void;
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
	var headers : node.http.IncomingHttpHeaders;
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
	function setTimeout(msecs:Float, ?callback:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
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
	function destroy(?error:js.lib.Error):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
	/**
		Returns whether the stream was destroyed or errored before emitting `'end'`.
	**/
	final readableAborted : Bool;
	/**
		Is `true` if it is safe to call
		{@link
		read
		}
		, which means
		the stream has not been destroyed or emitted `'error'` or `'end'`.
	**/
	var readable : Bool;
	/**
		Returns whether `'data'` has been emitted.
	**/
	final readableDidRead : Bool;
	/**
		Getter for the property `encoding` of a given `Readable` stream. The `encoding` property can be set using the
		{@link
		setEncoding
		}
		method.
	**/
	final readableEncoding : Null<global.nodejs.BufferEncoding>;
	/**
		Becomes `true` when [`'end'`](https://nodejs.org/docs/latest-v20.x/api/stream.html#event-end) event is emitted.
	**/
	final readableEnded : Bool;
	/**
		This property reflects the current state of a `Readable` stream as described
		in the [Three states](https://nodejs.org/docs/latest-v20.x/api/stream.html#three-states) section.
	**/
	final readableFlowing : Null<Bool>;
	/**
		Returns the value of `highWaterMark` passed when creating this `Readable`.
	**/
	final readableHighWaterMark : Float;
	/**
		This property contains the number of bytes (or objects) in the queue
		ready to be read. The value provides introspection data regarding
		the status of the `highWaterMark`.
	**/
	final readableLength : Float;
	/**
		Getter for the property `objectMode` of a given `Readable` stream.
	**/
	final readableObjectMode : Bool;
	/**
		Is `true` after `readable.destroy()` has been called.
	**/
	var destroyed : Bool;
	/**
		Is `true` after `'close'` has been emitted.
	**/
	final closed : Bool;
	/**
		Returns error if the stream has been destroyed with an error.
	**/
	final errored : Null<js.lib.Error>;
	@:optional
	function _construct(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _read(size:Float):Void;
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
	function read(?size:Float):Dynamic;
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
	function setEncoding(encoding:global.nodejs.BufferEncoding):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
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
	function pause():Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
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
	function resume():Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
	/**
		The `readable.isPaused()` method returns the current operating state of the `Readable`.
		This is used primarily by the mechanism that underlies the `readable.pipe()` method.
		In most typical cases, there will be no reason to use this method directly.
		
		```js
		const readable = new stream.Readable();
		
		readable.isPaused(); // === false
		readable.pause();
		readable.isPaused(); // === true
		readable.resume();
		readable.isPaused(); // === false
		```
	**/
	function isPaused():Bool;
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
	function unpipe(?destination:global.nodejs.WritableStream):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
	/**
		Passing `chunk` as `null` signals the end of the stream (EOF) and behaves the
		same as `readable.push(null)`, after which no more data can be written. The EOF
		signal is put at the end of the buffer and any buffered data will still be
		flushed.
		
		The `readable.unshift()` method pushes a chunk of data back into the internal
		buffer. This is useful in certain situations where a stream is being consumed by
		code that needs to "un-consume" some amount of data that it has optimistically
		pulled out of the source, so that the data can be passed on to some other party.
		
		The `stream.unshift(chunk)` method cannot be called after the `'end'` event
		has been emitted or a runtime error will be thrown.
		
		Developers using `stream.unshift()` often should consider switching to
		use of a `Transform` stream instead. See the `API for stream implementers` section for more information.
		
		```js
		// Pull off a header delimited by \n\n.
		// Use unshift() if we get too much.
		// Call the callback with (error, header, stream).
		import { StringDecoder } from 'node:string_decoder';
		function parseHeader(stream, callback) {
		  stream.on('error', callback);
		  stream.on('readable', onReadable);
		  const decoder = new StringDecoder('utf8');
		  let header = '';
		  function onReadable() {
		    let chunk;
		    while (null !== (chunk = stream.read())) {
		      const str = decoder.write(chunk);
		      if (str.includes('\n\n')) {
		        // Found the header boundary.
		        const split = str.split(/\n\n/);
		        header += split.shift();
		        const remaining = split.join('\n\n');
		        const buf = Buffer.from(remaining, 'utf8');
		        stream.removeListener('error', callback);
		        // Remove the 'readable' listener before unshifting.
		        stream.removeListener('readable', onReadable);
		        if (buf.length)
		          stream.unshift(buf);
		        // Now the body of the message can be read from the stream.
		        callback(null, header, stream);
		        return;
		      }
		      // Still reading the header.
		      header += str;
		    }
		  }
		}
		```
		
		Unlike
		{@link
		push
		}
		, `stream.unshift(chunk)` will not
		end the reading process by resetting the internal reading state of the stream.
		This can cause unexpected results if `readable.unshift()` is called during a
		read (i.e. from within a
		{@link
		_read
		}
		implementation on a
		custom stream). Following the call to `readable.unshift()` with an immediate
		{@link
		push
		}
		will reset the reading state appropriately,
		however it is best to simply avoid calling `readable.unshift()` while in the
		process of performing a read.
	**/
	function unshift(chunk:Dynamic, ?encoding:global.nodejs.BufferEncoding):Void;
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
	function wrap(stream:global.nodejs.ReadableStream):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
	function push(chunk:Dynamic, ?encoding:global.nodejs.BufferEncoding):Bool;
	/**
		The iterator created by this method gives users the option to cancel the destruction
		of the stream if the `for await...of` loop is exited by `return`, `break`, or `throw`,
		or if the iterator should destroy the stream if the stream emitted an error during iteration.
	**/
	function iterator(?options:{ @:optional var destroyOnReturn : Bool; }):global.nodejs.AsyncIterator<Dynamic, Dynamic, Dynamic>;
	/**
		This method allows mapping over the stream. The *fn* function will be called for every chunk in the stream.
		If the *fn* function returns a promise - that promise will be `await`ed before being passed to the result stream.
	**/
	function map(fn:ts.AnyOf2<(data:Dynamic) -> Dynamic, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> Dynamic>, ?options:node.stream.stream.ArrayOptions):node.stream.stream.Readable;
	/**
		This method allows filtering the stream. For each chunk in the stream the *fn* function will be called
		and if it returns a truthy value, the chunk will be passed to the result stream.
		If the *fn* function returns a promise - that promise will be `await`ed.
	**/
	function filter(fn:ts.AnyOf2<(data:Dynamic) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>>, ?options:node.stream.stream.ArrayOptions):node.stream.stream.Readable;
	/**
		This method allows iterating a stream. For each chunk in the stream the *fn* function will be called.
		If the *fn* function returns a promise - that promise will be `await`ed.
		
		This method is different from `for await...of` loops in that it can optionally process chunks concurrently.
		In addition, a `forEach` iteration can only be stopped by having passed a `signal` option
		and aborting the related AbortController while `for await...of` can be stopped with `break` or `return`.
		In either case the stream will be destroyed.
		
		This method is different from listening to the `'data'` event in that it uses the `readable` event
		in the underlying machinary and can limit the number of concurrent *fn* calls.
	**/
	function forEach(fn:ts.AnyOf2<(data:Dynamic) -> js.lib.Promise<ts.Undefined>, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> js.lib.Promise<ts.Undefined>>, ?options:node.stream.stream.ArrayOptions):js.lib.Promise<ts.Undefined>;
	/**
		This method allows easily obtaining the contents of a stream.
		
		As this method reads the entire stream into memory, it negates the benefits of streams. It's intended
		for interoperability and convenience, not as the primary way to consume streams.
	**/
	function toArray(?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):js.lib.Promise<Array<Dynamic>>;
	/**
		This method is similar to `Array.prototype.some` and calls *fn* on each chunk in the stream
		until the awaited return value is `true` (or any truthy value). Once an *fn* call on a chunk
		`await`ed return value is truthy, the stream is destroyed and the promise is fulfilled with `true`.
		If none of the *fn* calls on the chunks return a truthy value, the promise is fulfilled with `false`.
	**/
	function some(fn:ts.AnyOf2<(data:Dynamic) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>>, ?options:node.stream.stream.ArrayOptions):js.lib.Promise<Bool>;
	/**
		This method is similar to `Array.prototype.find` and calls *fn* on each chunk in the stream
		to find a chunk with a truthy value for *fn*. Once an *fn* call's awaited return value is truthy,
		the stream is destroyed and the promise is fulfilled with value for which *fn* returned a truthy value.
		If all of the *fn* calls on the chunks return a falsy value, the promise is fulfilled with `undefined`.
	**/
	@:overload(function(fn:ts.AnyOf2<(data:Dynamic) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>>, ?options:node.stream.stream.ArrayOptions):js.lib.Promise<Dynamic> { })
	function find<T>(fn:ts.AnyOf2<(data:Dynamic) -> Bool, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> Bool>, ?options:node.stream.stream.ArrayOptions):js.lib.Promise<Null<T>>;
	/**
		This method is similar to `Array.prototype.every` and calls *fn* on each chunk in the stream
		to check if all awaited return values are truthy value for *fn*. Once an *fn* call on a chunk
		`await`ed return value is falsy, the stream is destroyed and the promise is fulfilled with `false`.
		If all of the *fn* calls on the chunks return a truthy value, the promise is fulfilled with `true`.
	**/
	function every(fn:ts.AnyOf2<(data:Dynamic) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>>, ?options:node.stream.stream.ArrayOptions):js.lib.Promise<Bool>;
	/**
		This method returns a new stream by applying the given callback to each chunk of the stream
		and then flattening the result.
		
		It is possible to return a stream or another iterable or async iterable from *fn* and the result streams
		will be merged (flattened) into the returned stream.
	**/
	function flatMap(fn:ts.AnyOf2<(data:Dynamic) -> Dynamic, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> Dynamic>, ?options:node.stream.stream.ArrayOptions):node.stream.stream.Readable;
	/**
		This method returns a new stream with the first *limit* chunks dropped from the start.
	**/
	function drop(limit:Float, ?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):node.stream.stream.Readable;
	/**
		This method returns a new stream with the first *limit* chunks.
	**/
	function take(limit:Float, ?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):node.stream.stream.Readable;
	/**
		This method returns a new stream with chunks of the underlying stream paired with a counter
		in the form `[index, chunk]`. The first index value is `0` and it increases by 1 for each chunk produced.
	**/
	function asIndexedPairs(?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):node.stream.stream.Readable;
	/**
		This method calls *fn* on each chunk of the stream in order, passing it the result from the calculation
		on the previous element. It returns a promise for the final value of the reduction.
		
		If no *initial* value is supplied the first chunk of the stream is used as the initial value.
		If the stream is empty, the promise is rejected with a `TypeError` with the `ERR_INVALID_ARGS` code property.
		
		The reducer function iterates the stream element-by-element which means that there is no *concurrency* parameter
		or parallelism. To perform a reduce concurrently, you can extract the async function to `readable.map` method.
	**/
	@:overload(function<T>(fn:ts.AnyOf2<(previous:T, data:Dynamic) -> T, (previous:T, data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> T>, initial:T, ?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):js.lib.Promise<T> { })
	function reduce<T>(fn:ts.AnyOf2<(previous:Dynamic, data:Dynamic) -> T, (previous:Dynamic, data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> T>, ?initial:Any, ?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):js.lib.Promise<T>;
	function _destroy(error:Null<js.lib.Error>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	function addListener(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
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
	@:overload(function(event:String, chunk:Dynamic):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	function on(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	function once(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	function prependListener(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	function prependOnceListener(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj> { })
	function removeListener(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
	function pipe<T:(global.nodejs.WritableStream)>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function compose<T:(global.nodejs.ReadableStream)>(stream:ts.AnyOf4<Request, T, Iterable<T>, js.lib.AsyncIterable<T, Dynamic, Dynamic>>, ?options:{ var signal : js.html.AbortSignal; }):T;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>;
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