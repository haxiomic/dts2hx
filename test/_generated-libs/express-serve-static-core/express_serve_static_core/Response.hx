package express_serve_static_core;

typedef Response<ResBody, LocalsObj, StatusCode:(Float)> = {
	/**
		Set status `code`.
	**/
	function status(code:StatusCode):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Set the response HTTP status code to `statusCode` and send its string representation as the response body.
	**/
	function sendStatus(code:StatusCode):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Set Link header field with the given `links`.
		
		Examples:
		
		   res.links({
		     next: 'http://api.example.com/users?page=2',
		     last: 'http://api.example.com/users?page=5'
		   });
	**/
	function links(links:Dynamic):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Send a response.
		
		Examples:
		
		    res.send(new Buffer('wahoo'));
		    res.send({ some: 'json' });
		    res.send('<p>some html</p>');
		    res.status(404).send('Sorry, cant find that');
	**/
	dynamic function send(?body:ResBody):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Send JSON response.
		
		Examples:
		
		    res.json(null);
		    res.json({ user: 'tj' });
		    res.status(500).json('oh noes!');
		    res.status(404).json('I dont have that');
	**/
	dynamic function json(?body:ResBody):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Send JSON response with JSONP callback support.
		
		Examples:
		
		    res.jsonp(null);
		    res.jsonp({ user: 'tj' });
		    res.status(500).jsonp('oh noes!');
		    res.status(404).jsonp('I dont have that');
	**/
	dynamic function jsonp(?body:ResBody):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Transfer the file at the given `path`.
		
		Automatically sets the _Content-Type_ response header field.
		The callback `fn(err)` is invoked when the transfer is complete
		or when an error occurs. Be sure to check `res.headersSent`
		if you wish to attempt responding, as the header and some data
		may have already been transferred.
		
		Options:
		
		  - `maxAge`   defaulting to 0 (can be string converted by `ms`)
		  - `root`     root directory for relative filenames
		  - `headers`  object of headers to serve with file
		  - `dotfiles` serve dotfiles, defaulting to false; can be `"allow"` to send them
		
		Other options are passed along to `send`.
		
		Examples:
		
		 The following example illustrates how `res.sendFile()` may
		 be used as an alternative for the `static()` middleware for
		 dynamic situations. The code backing `res.sendFile()` is actually
		 the same code, so HTTP cache support etc is identical.
		
		    app.get('/user/:uid/photos/:file', function(req, res){
		      var uid = req.params.uid
		        , file = req.params.file;
		
		      req.user.mayViewFilesFrom(uid, function(yes){
		        if (yes) {
		          res.sendFile('/uploads/' + uid + '/' + file);
		        } else {
		          res.send(403, 'Sorry! you cant see that.');
		        }
		      });
		    });
	**/
	@:overload(function(path:String, options:SendFileOptions, ?fn:Errback):Void { })
	function sendFile(path:String, ?fn:Errback):Void;
	/**
		Transfer the file at the given `path` as an attachment.
		
		Optionally providing an alternate attachment `filename`,
		and optional callback `fn(err)`. The callback is invoked
		when the data transfer is complete, or when an error has
		ocurred. Be sure to check `res.headersSent` if you plan to respond.
		
		The optional options argument passes through to the underlying
		res.sendFile() call, and takes the exact same parameters.
		
		This method uses `res.sendFile()`.
	**/
	@:overload(function(path:String, filename:String, ?fn:Errback):Void { })
	@:overload(function(path:String, filename:String, options:DownloadOptions, ?fn:Errback):Void { })
	function download(path:String, ?fn:Errback):Void;
	/**
		Set _Content-Type_ response header with `type` through `mime.lookup()`
		when it does not contain "/", or set the Content-Type to `type` otherwise.
		
		Examples:
		
		    res.type('.html');
		    res.type('html');
		    res.type('json');
		    res.type('application/json');
		    res.type('png');
	**/
	function contentType(type:String):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Set _Content-Type_ response header with `type` through `mime.lookup()`
		when it does not contain "/", or set the Content-Type to `type` otherwise.
		
		Examples:
		
		    res.type('.html');
		    res.type('html');
		    res.type('json');
		    res.type('application/json');
		    res.type('png');
	**/
	function type(type:String):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Respond to the Acceptable formats using an `obj`
		of mime-type callbacks.
		
		This method uses `req.accepted`, an array of
		acceptable types ordered by their quality values.
		When "Accept" is not present the _first_ callback
		is invoked, otherwise the first match is used. When
		no match is performed the server responds with
		406 "Not Acceptable".
		
		Content-Type is set for you, however if you choose
		you may alter this within the callback using `res.type()`
		or `res.set('Content-Type', ...)`.
		
		   res.format({
		     'text/plain': function(){
		       res.send('hey');
		     },
		
		     'text/html': function(){
		       res.send('<p>hey</p>');
		     },
		
		     'appliation/json': function(){
		       res.send({ message: 'hey' });
		     }
		   });
		
		In addition to canonicalized MIME types you may
		also use extnames mapped to these types:
		
		   res.format({
		     text: function(){
		       res.send('hey');
		     },
		
		     html: function(){
		       res.send('<p>hey</p>');
		     },
		
		     json: function(){
		       res.send({ message: 'hey' });
		     }
		   });
		
		By default Express passes an `Error`
		with a `.status` of 406 to `next(err)`
		if a match is not made. If you provide
		a `.default` callback it will be invoked
		instead.
	**/
	function format(obj:Dynamic):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Set _Content-Disposition_ header to _attachment_ with optional `filename`.
	**/
	function attachment(?filename:String):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Set header `field` to `val`, or pass
		an object of header fields.
		
		Examples:
		
		   res.set('Foo', ['bar', 'baz']);
		   res.set('Accept', 'application/json');
		   res.set({ Accept: 'text/plain', 'X-API-Key': 'tobi' });
		
		Aliased as `res.header()`.
	**/
	@:overload(function(field:String, ?value:ts.AnyOf2<String, Array<String>>):Response<ResBody, LocalsObj, StatusCode> { })
	function set(field:Dynamic):Response<ResBody, LocalsObj, StatusCode>;
	@:overload(function(field:String, ?value:ts.AnyOf2<String, Array<String>>):Response<ResBody, LocalsObj, StatusCode> { })
	function header(field:Dynamic):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Read-only. `true` if the headers were sent, otherwise `false`.
	**/
	var headersSent : Bool;
	/**
		Get value for header `field`.
	**/
	function get(field:String):Null<String>;
	/**
		Clear cookie `name`.
	**/
	function clearCookie(name:String, ?options:CookieOptions):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Set cookie `name` to `val`, with the given `options`.
		
		Options:
		
		   - `maxAge`   max-age in milliseconds, converted to `expires`
		   - `signed`   sign the cookie
		   - `path`     defaults to "/"
		
		Examples:
		
		   // "Remember Me" for 15 minutes
		   res.cookie('rememberme', '1', { expires: new Date(Date.now() + 900000), httpOnly: true });
		
		   // save as above
		   res.cookie('rememberme', '1', { maxAge: 900000, httpOnly: true })
	**/
	@:overload(function(name:String, val:Dynamic, options:CookieOptions):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(name:String, val:Dynamic):Response<ResBody, LocalsObj, StatusCode> { })
	function cookie(name:String, val:String, options:CookieOptions):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Set the location header to `url`.
		
		Examples:
		
		   res.location('/foo/bar').;
		   res.location('http://example.com');
		   res.location('../login'); // /blog/post/1 -> /blog/login
		
		Mounting:
		
		  When an application is mounted and `res.location()`
		  is given a path that does _not_ lead with "/" it becomes
		  relative to the mount-point. For example if the application
		  is mounted at "/blog", the following would become "/blog/login".
		
		     res.location('login');
		
		  While the leading slash would result in a location of "/login":
		
		     res.location('/login');
	**/
	function location(url:String):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Redirect to the given `url` with optional response `status`
		defaulting to 302.
		
		The resulting `url` is determined by `res.location()`, so
		it will play nicely with mounted apps, relative paths, etc.
		
		Examples:
		
		   res.redirect('/foo/bar');
		   res.redirect('http://example.com');
		   res.redirect(301, 'http://example.com');
		   res.redirect('../login'); // /blog/post/1 -> /blog/login
	**/
	@:overload(function(status:Float, url:String):Void { })
	function redirect(url:String):Void;
	/**
		Render `view` with the given `options` and optional callback `fn`.
		When a callback function is given a response will _not_ be made
		automatically, otherwise a response of _200_ and _text/html_ is given.
		
		Options:
		
		 - `cache`     boolean hinting to the engine it should cache
		 - `filename`  filename of the view being rendered
	**/
	@:overload(function(view:String, ?callback:(err:js.lib.Error, html:String) -> Void):Void { })
	function render(view:String, ?options:Dynamic, ?callback:(err:js.lib.Error, html:String) -> Void):Void;
	var locals : Locals;
	var charset : String;
	/**
		Adds the field to the Vary response header, if it is not there already.
		Examples:
		
		    res.vary('User-Agent').render('docs');
	**/
	function vary(field:String):Response<ResBody, LocalsObj, StatusCode>;
	var app : Application<haxe.DynamicAccess<Dynamic>>;
	/**
		Appends the specified value to the HTTP response header field.
		If the header is not already set, it creates the header with the specified value.
		The value parameter can be a string or an array.
		
		Note: calling res.set() after res.append() will reset the previously-set header value.
	**/
	function append(field:String, ?value:ts.AnyOf2<String, Array<String>>):Response<ResBody, LocalsObj, StatusCode>;
	/**
		After middleware.init executed, Response will contain req property
		See: express/lib/middleware/init.js
	**/
	var req : Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>;
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
	@:overload(function(statusCode:Float, ?headers:ts.AnyOf2<node.http.OutgoingHttpHeaders, Array<node.http.OutgoingHttpHeader>>):Response<ResBody, LocalsObj, StatusCode> { })
	function writeHead(statusCode:Float, ?statusMessage:String, ?headers:ts.AnyOf2<node.http.OutgoingHttpHeaders, Array<node.http.OutgoingHttpHeader>>):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Sends a HTTP/1.1 102 Processing message to the client, indicating that
		the request body should be sent.
	**/
	function writeProcessing(?callback:() -> Void):Void;
	var chunkedEncoding : Bool;
	var shouldKeepAlive : Bool;
	var useChunkedEncodingByDefault : Bool;
	var sendDate : Bool;
	var finished : Bool;
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
	function setTimeout(msecs:Float, ?callback:() -> Void):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Sets a single header value. If the header already exists in the to-be-sent
		headers, its value will be replaced. Use an array of strings to send multiple
		headers with the same name.
	**/
	function setHeader(name:String, value:ts.AnyOf3<String, Float, haxe.ds.ReadOnlyArray<String>>):Response<ResBody, LocalsObj, StatusCode>;
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
	function setHeaders(headers:ts.AnyOf2<js.html.Headers, js.lib.Map<String, ts.AnyOf3<String, Float, haxe.ds.ReadOnlyArray<String>>>>):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Append a single header value to the header object.
		
		If the value is an array, this is equivalent to calling this method multiple
		times.
		
		If there were no previous values for the header, this is equivalent to calling `outgoingMessage.setHeader(name, value)`.
		
		Depending of the value of `options.uniqueHeaders` when the client request or the
		server were created, this will end up in the header being sent multiple times or
		a single time with values joined using `; `.
	**/
	function appendHeader(name:String, value:ts.AnyOf2<String, haxe.ds.ReadOnlyArray<String>>):Response<ResBody, LocalsObj, StatusCode>;
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
	function getHeaders():node.http.OutgoingHttpHeaders;
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
	function addTrailers(headers:ts.AnyOf2<node.http.OutgoingHttpHeaders, haxe.ds.ReadOnlyArray<ts.Tuple2<String, String>>>):Void;
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
		Is `true` if it is safe to call `writable.write()`, which means
		the stream has not been destroyed, errored, or ended.
	**/
	final writable : Bool;
	/**
		Returns whether the stream was destroyed or errored before emitting `'finish'`.
	**/
	final writableAborted : Bool;
	/**
		Is `true` after `writable.end()` has been called. This property
		does not indicate whether the data has been flushed, for this use `writable.writableFinished` instead.
	**/
	final writableEnded : Bool;
	/**
		Is set to `true` immediately before the `'finish'` event is emitted.
	**/
	final writableFinished : Bool;
	/**
		Return the value of `highWaterMark` passed when creating this `Writable`.
	**/
	final writableHighWaterMark : Float;
	/**
		This property contains the number of bytes (or objects) in the queue
		ready to be written. The value provides introspection data regarding
		the status of the `highWaterMark`.
	**/
	final writableLength : Float;
	/**
		Getter for the property `objectMode` of a given `Writable` stream.
	**/
	final writableObjectMode : Bool;
	/**
		Number of times `writable.uncork()` needs to be
		called in order to fully uncork the stream.
	**/
	final writableCorked : Float;
	/**
		Is `true` after `writable.destroy()` has been called.
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
	/**
		Is `true` if the stream's buffer has been full and stream will emit `'drain'`.
	**/
	final writableNeedDrain : Bool;
	function _write(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function _writev(chunks:Array<{ var chunk : Dynamic; var encoding : global.nodejs.BufferEncoding; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function _construct(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _destroy(error:Null<js.lib.Error>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	/**
		The `writable.write()` method writes some data to the stream, and calls the
		supplied `callback` once the data has been fully handled. If an error
		occurs, the `callback` will be called with the error as its
		first argument. The `callback` is called asynchronously and before `'error'` is
		emitted.
		
		The return value is `true` if the internal buffer is less than the `highWaterMark` configured when the stream was created after admitting `chunk`.
		If `false` is returned, further attempts to write data to the stream should
		stop until the `'drain'` event is emitted.
		
		While a stream is not draining, calls to `write()` will buffer `chunk`, and
		return false. Once all currently buffered chunks are drained (accepted for
		delivery by the operating system), the `'drain'` event will be emitted.
		Once `write()` returns false, do not write more chunks
		until the `'drain'` event is emitted. While calling `write()` on a stream that
		is not draining is allowed, Node.js will buffer all written chunks until
		maximum memory usage occurs, at which point it will abort unconditionally.
		Even before it aborts, high memory usage will cause poor garbage collector
		performance and high RSS (which is not typically released back to the system,
		even after the memory is no longer required). Since TCP sockets may never
		drain if the remote peer does not read the data, writing a socket that is
		not draining may lead to a remotely exploitable vulnerability.
		
		Writing data while the stream is not draining is particularly
		problematic for a `Transform`, because the `Transform` streams are paused
		by default until they are piped or a `'data'` or `'readable'` event handler
		is added.
		
		If the data to be written can be generated or fetched on demand, it is
		recommended to encapsulate the logic into a `Readable` and use
		{@link
		pipe
		}
		. However, if calling `write()` is preferred, it is
		possible to respect backpressure and avoid memory issues using the `'drain'` event:
		
		```js
		function write(data, cb) {
		  if (!stream.write(data)) {
		    stream.once('drain', cb);
		  } else {
		    process.nextTick(cb);
		  }
		}
		
		// Wait for cb to be called before doing any other write.
		write('hello', () => {
		  console.log('Write completed, do more writes now.');
		});
		```
		
		A `Writable` stream in object mode will always ignore the `encoding` argument.
	**/
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?callback:(error:Null<js.lib.Error>) -> Void):Bool { })
	function write(chunk:Dynamic, ?callback:(error:Null<js.lib.Error>) -> Void):Bool;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):Response<ResBody, LocalsObj, StatusCode>;
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
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?cb:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	function end(?cb:() -> Void):Response<ResBody, LocalsObj, StatusCode>;
	/**
		The `writable.cork()` method forces all written data to be buffered in memory.
		The buffered data will be flushed when either the
		{@link
		uncork
		}
		or
		{@link
		end
		}
		methods are called.
		
		The primary intent of `writable.cork()` is to accommodate a situation in which
		several small chunks are written to the stream in rapid succession. Instead of
		immediately forwarding them to the underlying destination, `writable.cork()` buffers all the chunks until `writable.uncork()` is called, which will pass them
		all to `writable._writev()`, if present. This prevents a head-of-line blocking
		situation where data is being buffered while waiting for the first small chunk
		to be processed. However, use of `writable.cork()` without implementing `writable._writev()` may have an adverse effect on throughput.
		
		See also: `writable.uncork()`, `writable._writev()`.
	**/
	function cork():Void;
	/**
		The `writable.uncork()` method flushes all data buffered since
		{@link
		cork
		}
		was called.
		
		When using `writable.cork()` and `writable.uncork()` to manage the buffering
		of writes to a stream, defer calls to `writable.uncork()` using `process.nextTick()`. Doing so allows batching of all `writable.write()` calls that occur within a given Node.js event
		loop phase.
		
		```js
		stream.cork();
		stream.write('some ');
		stream.write('data ');
		process.nextTick(() => stream.uncork());
		```
		
		If the `writable.cork()` method is called multiple times on a stream, the
		same number of calls to `writable.uncork()` must be called to flush the buffered
		data.
		
		```js
		stream.cork();
		stream.write('some ');
		stream.cork();
		stream.write('data ');
		process.nextTick(() => {
		  stream.uncork();
		  // The data will not be flushed until uncork() is called a second time.
		  stream.uncork();
		});
		```
		
		See also: `writable.cork()`.
	**/
	function uncork():Void;
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
	function destroy(?error:js.lib.Error):Response<ResBody, LocalsObj, StatusCode>;
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
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	function addListener(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode>;
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
	@:overload(function(event:String, err:js.lib.Error):Bool { })
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
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	function on(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode>;
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
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	function once(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode>;
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
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	function prependListener(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode>;
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
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	function prependOnceListener(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode>;
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
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody, LocalsObj, StatusCode> { })
	function removeListener(event:String, listener:() -> Void):Response<ResBody, LocalsObj, StatusCode>;
	function pipe<T:(global.nodejs.WritableStream)>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function compose<T:(global.nodejs.ReadableStream)>(stream:ts.AnyOf4<Response, T, Iterable<T>, js.lib.AsyncIterable<T, Dynamic, Dynamic>>, ?options:{ var signal : js.html.AbortSignal; }):T;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody, LocalsObj, StatusCode>;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Response<ResBody, LocalsObj, StatusCode>;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Response<ResBody, LocalsObj, StatusCode>;
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