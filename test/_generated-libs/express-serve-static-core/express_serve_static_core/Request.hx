package express_serve_static_core;

typedef Request<P, ResBody, ReqBody, ReqQuery> = {
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
		     // => undefined
		
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
	function range(size:Float, ?options:range_parser.Options):Null<ts.AnyOf2<range_parser.Ranges, Int>>;
	/**
		Return an array of Accepted media types
		ordered from highest quality to lowest.
	**/
	var accepted : Array<MediaType>;
	function param(name:String, ?defaultValue:Dynamic):String;
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
	var protocol : String;
	/**
		Short-hand for:
		
		    req.protocol == 'https'
	**/
	var secure : Bool;
	/**
		Return the remote address, or when
		"trust proxy" is `true` return
		the upstream addr.
	**/
	var ip : String;
	/**
		When "trust proxy" is `true`, parse
		the "X-Forwarded-For" ip address list.
		
		For example if the value were "client, proxy1, proxy2"
		you would receive the array `["client", "proxy1", "proxy2"]`
		where "proxy2" is the furthest down-stream.
	**/
	var ips : Array<String>;
	/**
		Return subdomains as an array.
		
		Subdomains are the dot-separated parts of the host before the main domain of
		the app. By default, the domain of the app is assumed to be the last two
		parts of the host. This can be changed by setting "subdomain offset".
		
		For example, if the domain is "tobi.ferrets.example.com":
		If "subdomain offset" is not set, req.subdomains is `["ferrets", "tobi"]`.
		If "subdomain offset" is 3, req.subdomains is `["tobi"]`.
	**/
	var subdomains : Array<String>;
	/**
		Short-hand for `url.parse(req.url).pathname`.
	**/
	var path : String;
	/**
		Parse the "Host" header field hostname.
	**/
	var hostname : String;
	var host : String;
	/**
		Check if the request is fresh, aka
		Last-Modified and/or the ETag
		still match.
	**/
	var fresh : Bool;
	/**
		Check if the request is stale, aka
		"Last-Modified" and / or the "ETag" for the
		resource has changed.
	**/
	var stale : Bool;
	/**
		Check if the request was an _XMLHttpRequest_.
	**/
	var xhr : Bool;
	var body : ReqBody;
	var cookies : Dynamic;
	/**
		Only valid for request obtained from http.Server.
	**/
	var method : String;
	var params : P;
	var query : ReqQuery;
	var route : Dynamic;
	var signedCookies : Dynamic;
	var originalUrl : String;
	/**
		Only valid for request obtained from http.Server.
	**/
	var url : String;
	var baseUrl : String;
	var app : Application;
	/**
		After middleware.init executed, Request will contain res and next properties
		See: express/lib/middleware/init.js
	**/
	@:optional
	var res : Response<ResBody>;
	@:optional
	@:overload(function(deferToNext:String):Void { })
	dynamic function next(?err:Dynamic):Void;
	var httpVersion : String;
	var httpVersionMajor : Float;
	var httpVersionMinor : Float;
	var connection : node.net.Socket;
	var headers : node.http.IncomingHttpHeaders;
	var rawHeaders : Array<String>;
	var trailers : haxe.DynamicAccess<Null<String>>;
	var rawTrailers : Array<String>;
	function setTimeout(msecs:Float, callback:() -> Void):Request<P, ResBody, ReqBody, ReqQuery>;
	/**
		Only valid for response obtained from http.ClientRequest.
	**/
	@:optional
	var statusCode : Float;
	/**
		Only valid for response obtained from http.ClientRequest.
	**/
	@:optional
	var statusMessage : String;
	var socket : node.net.Socket;
	function destroy(?error:js.lib.Error):Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Dynamic;
	function setEncoding(encoding:String):Request<P, ResBody, ReqBody, ReqQuery>;
	function pause():Request<P, ResBody, ReqBody, ReqQuery>;
	function resume():Request<P, ResBody, ReqBody, ReqQuery>;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):Request<P, ResBody, ReqBody, ReqQuery>;
	function unshift(chunk:Dynamic):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Request<P, ResBody, ReqBody, ReqQuery>;
	function push(chunk:Dynamic, ?encoding:String):Bool;
	function _destroy(error:Null<js.lib.Error>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	function addListener(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery>;
	@:overload(function(event:String, chunk:Dynamic):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	function on(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	function once(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	function prependListener(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	function prependOnceListener(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery> { })
	function removeListener(event:String, listener:() -> Void):Request<P, ResBody, ReqBody, ReqQuery>;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Request<P, ResBody, ReqBody, ReqQuery>;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Request<P, ResBody, ReqBody, ReqQuery>;
	function setMaxListeners(n:Float):Request<P, ResBody, ReqBody, ReqQuery>;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};