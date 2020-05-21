package connect;

typedef Server = {
	@:selfCall
	function call(req:node.http.IncomingMessage, res:node.http.ServerResponse, ?next:haxe.Constraints.Function):Void;
	var route : String;
	var stack : Array<ServerStackItem>;
	/**
		Utilize the given middleware `handle` to the given `route`,
		defaulting to _/_. This "route" is the mount-point for the
		middleware, when given a value other than _/_ the middleware
		is only effective when that segment is present in the request's
		pathname.
		
		For example if we were to mount a function at _/admin_, it would
		be invoked on _/admin_, and _/admin/settings_, however it would
		not be invoked for _/_, or _/posts_.
	**/
	@:overload(function(route:String, fn:HandleFunction):Server { })
	function use(fn:HandleFunction):Server;
	/**
		Handle server requests, punting them down
		the middleware stack.
	**/
	function handle(req:node.http.IncomingMessage, res:node.http.ServerResponse, next:haxe.Constraints.Function):Void;
	/**
		Listen for connections.
		
		This method takes the same arguments
		as node's `http.Server#listen()`.
		
		HTTP and HTTPS:
		
		If you run your application both as HTTP
		and HTTPS you may wrap them individually,
		since your Connect "server" is really just
		a JavaScript `Function`.
		
		      var connect = require('connect')
		        , http = require('http')
		        , https = require('https');
		
		      var app = connect();
		
		      http.createServer(app).listen(80);
		      https.createServer(options, app).listen(443);
	**/
	@:overload(function(port:Float, ?hostname:String, ?callback:haxe.Constraints.Function):node.http.Server { })
	@:overload(function(path:String, ?callback:haxe.Constraints.Function):node.http.Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:haxe.Constraints.Function):node.http.Server { })
	function listen(port:Float, ?hostname:String, ?backlog:Float, ?callback:haxe.Constraints.Function):node.http.Server;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Server;
	function setMaxListeners(n:Float):Server;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};