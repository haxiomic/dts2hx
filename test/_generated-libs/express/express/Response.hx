package express;

typedef Response<ResBody> = {
	/**
		Set status `code`.
	**/
	function status(code:Float):Response<ResBody>;
	/**
		Set the response HTTP status code to `statusCode` and send its string representation as the response body.
	**/
	function sendStatus(code:Float):Response<ResBody>;
	/**
		Set Link header field with the given `links`.
		
		Examples:
		
		    res.links({
		      next: 'http://api.example.com/users?page=2',
		      last: 'http://api.example.com/users?page=5'
		    });
	**/
	function links(links:Dynamic):Response<ResBody>;
	/**
		Send a response.
		
		Examples:
		
		     res.send(new Buffer('wahoo'));
		     res.send({ some: 'json' });
		     res.send('<p>some html</p>');
		     res.status(404).send('Sorry, cant find that');
	**/
	dynamic function send(?body:ResBody):Response<ResBody>;
	/**
		Send JSON response.
		
		Examples:
		
		     res.json(null);
		     res.json({ user: 'tj' });
		     res.status(500).json('oh noes!');
		     res.status(404).json('I dont have that');
	**/
	dynamic function json(?body:ResBody):Response<ResBody>;
	/**
		Send JSON response with JSONP callback support.
		
		Examples:
		
		     res.jsonp(null);
		     res.jsonp({ user: 'tj' });
		     res.status(500).jsonp('oh noes!');
		     res.status(404).jsonp('I dont have that');
	**/
	dynamic function jsonp(?body:ResBody):Response<ResBody>;
	/**
		Transfer the file at the given `path`.
		
		Automatically sets the _Content-Type_ response header field.
		The callback `fn(err)` is invoked when the transfer is complete
		or when an error occurs. Be sure to check `res.sentHeader`
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
	@:overload(function(path:String, options:Dynamic, ?fn:express_serve_static_core.Errback):Void { })
	function sendFile(path:String, ?fn:express_serve_static_core.Errback):Void;
	@:overload(function(path:String, options:Dynamic):Void { })
	@:overload(function(path:String, fn:express_serve_static_core.Errback):Void { })
	@:overload(function(path:String, options:Dynamic, fn:express_serve_static_core.Errback):Void { })
	function sendfile(path:String):Void;
	/**
		Transfer the file at the given `path` as an attachment.
		
		Optionally providing an alternate attachment `filename`,
		and optional callback `fn(err)`. The callback is invoked
		when the data transfer is complete, or when an error has
		ocurred. Be sure to check `res.headerSent` if you plan to respond.
		
		The optional options argument passes through to the underlying
		res.sendFile() call, and takes the exact same parameters.
		
		This method uses `res.sendfile()`.
	**/
	@:overload(function(path:String, filename:String, ?fn:express_serve_static_core.Errback):Void { })
	@:overload(function(path:String, filename:String, options:Dynamic, ?fn:express_serve_static_core.Errback):Void { })
	function download(path:String, ?fn:express_serve_static_core.Errback):Void;
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
	function contentType(type:String):Response<ResBody>;
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
	function type(type:String):Response<ResBody>;
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
	function format(obj:Dynamic):Response<ResBody>;
	/**
		Set _Content-Disposition_ header to _attachment_ with optional `filename`.
	**/
	function attachment(?filename:String):Response<ResBody>;
	/**
		Set header `field` to `val`, or pass
		an object of header fields.
		
		Examples:
		
		    res.set('Foo', ['bar', 'baz']);
		    res.set('Accept', 'application/json');
		    res.set({ Accept: 'text/plain', 'X-API-Key': 'tobi' });
		
		Aliased as `res.header()`.
	**/
	@:overload(function(field:String, ?value:ts.AnyOf2<String, Array<String>>):Response<ResBody> { })
	function set(field:Dynamic):Response<ResBody>;
	@:overload(function(field:String, ?value:ts.AnyOf2<String, Array<String>>):Response<ResBody> { })
	function header(field:Dynamic):Response<ResBody>;
	var headersSent : Bool;
	/**
		Get value for header `field`.
	**/
	function get(field:String):String;
	/**
		Clear cookie `name`.
	**/
	function clearCookie(name:String, ?options:Dynamic):Response<ResBody>;
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
	@:overload(function(name:String, val:Dynamic, options:express_serve_static_core.CookieOptions):Response<ResBody> { })
	@:overload(function(name:String, val:Dynamic):Response<ResBody> { })
	function cookie(name:String, val:String, options:express_serve_static_core.CookieOptions):Response<ResBody>;
	/**
		Set the location header to `url`.
		
		The given `url` can also be the name of a mapped url, for
		example by default express supports "back" which redirects
		to the _Referrer_ or _Referer_ headers or "/".
		
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
	function location(url:String):Response<ResBody>;
	/**
		Redirect to the given `url` with optional response `status`
		defaulting to 302.
		
		The resulting `url` is determined by `res.location()`, so
		it will play nicely with mounted apps, relative paths,
		`"back"` etc.
		
		Examples:
		
		    res.redirect('/foo/bar');
		    res.redirect('http://example.com');
		    res.redirect(301, 'http://example.com');
		    res.redirect('http://example.com', 301);
		    res.redirect('../login'); // /blog/post/1 -> /blog/login
	**/
	@:overload(function(status:Float, url:String):Void { })
	@:overload(function(url:String, status:Float):Void { })
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
	var locals : Dynamic;
	var charset : String;
	/**
		Adds the field to the Vary response header, if it is not there already.
		Examples:
		
		     res.vary('User-Agent').render('docs');
	**/
	function vary(field:String):Response<ResBody>;
	var app : express_serve_static_core.Application;
	/**
		Appends the specified value to the HTTP response header field.
		If the header is not already set, it creates the header with the specified value.
		The value parameter can be a string or an array.
		
		Note: calling res.set() after res.append() will reset the previously-set header value.
	**/
	function append(field:String, ?value:ts.AnyOf2<String, Array<String>>):Response<ResBody>;
	/**
		After middleware.init executed, Response will contain req property
		See: express/lib/middleware/init.js
	**/
	@:optional
	var req : express_serve_static_core.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>;
	var statusCode : Float;
	var statusMessage : String;
	function assignSocket(socket:node.net.Socket):Void;
	function detachSocket(socket:node.net.Socket):Void;
	function writeContinue(?callback:() -> Void):Void;
	@:overload(function(statusCode:Float, ?headers:node.http.OutgoingHttpHeaders):Response<ResBody> { })
	function writeHead(statusCode:Float, ?reasonPhrase:String, ?headers:node.http.OutgoingHttpHeaders):Response<ResBody>;
	var upgrading : Bool;
	var chunkedEncoding : Bool;
	var shouldKeepAlive : Bool;
	var useChunkedEncodingByDefault : Bool;
	var sendDate : Bool;
	var finished : Bool;
	var connection : node.net.Socket;
	function setTimeout(msecs:Float, ?callback:() -> Void):Response<ResBody>;
	function setHeader(name:String, value:ts.AnyOf3<String, Float, Array<String>>):Void;
	function getHeader(name:String):Null<ts.AnyOf3<String, Float, Array<String>>>;
	function getHeaders():node.http.OutgoingHttpHeaders;
	function getHeaderNames():Array<String>;
	function hasHeader(name:String):Bool;
	function removeHeader(name:String):Void;
	function addTrailers(headers:ts.AnyOf2<node.http.OutgoingHttpHeaders, Array<ts.Tuple2<String, String>>>):Void;
	function flushHeaders():Void;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Dynamic, encoding:String, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function _writev(chunks:Array<{ var chunk : Dynamic; var encoding : String; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _destroy(error:Null<js.lib.Error>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:overload(function(chunk:Dynamic, ?encoding:String, ?cb:(error:Null<js.lib.Error>) -> Void):Bool { })
	function write(chunk:Dynamic, ?cb:(error:Null<js.lib.Error>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):Response<ResBody>;
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Dynamic, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	function destroy(?error:js.lib.Error):Void;
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
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody> { })
	function addListener(event:String, listener:() -> Void):Response<ResBody>;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody> { })
	function on(event:String, listener:() -> Void):Response<ResBody>;
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody> { })
	function once(event:String, listener:() -> Void):Response<ResBody>;
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody> { })
	function prependListener(event:String, listener:() -> Void):Response<ResBody>;
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody> { })
	function prependOnceListener(event:String, listener:() -> Void):Response<ResBody>;
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:() -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Response<ResBody> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody> { })
	function removeListener(event:String, listener:() -> Void):Response<ResBody>;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Response<ResBody>;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Response<ResBody>;
	function setMaxListeners(n:Float):Response<ResBody>;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};