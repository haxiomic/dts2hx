package express_serve_static_core;
typedef Express = {
	/**
		Express instance itself is a request handler, which could be invoked without
		third argument.
	**/
	@:overload(function(req:Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>, res:Response<Dynamic>, next:NextFunction):Dynamic { })
	@:selfCall
	function call(req:ts.AnyOf2<Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>, express_serve_static_core.http.IncomingMessage>, res:ts.AnyOf2<Response<Dynamic>, express_serve_static_core.http.ServerResponse>):Dynamic;
	var request : Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>;
	var response : Response<Dynamic>;
	/**
		Initialize the server.
		
		   - setup default configuration
		   - setup default middleware
		   - setup route reflection methods
	**/
	function init():Void;
	/**
		Initialize application configuration.
	**/
	function defaultConfiguration():Void;
	/**
		Register the given template engine callback `fn`
		as `ext`.
		
		By default will `require()` the engine based on the
		file extension. For example if you try to render
		a "foo.jade" file Express will invoke the following internally:
		
		     app.engine('jade', require('jade').__express);
		
		For engines that do not provide `.__express` out of the box,
		or if you wish to "map" a different extension to the template engine
		you may use this method. For example mapping the EJS template engine to
		".html" files:
		
		     app.engine('html', require('ejs').renderFile);
		
		In this case EJS provides a `.renderFile()` method with
		the same signature that Express expects: `(path, options, callback)`,
		though note that it aliases this method as `ejs.__express` internally
		so if you're using ".ejs" extensions you dont need to do anything.
		
		Some template engines do not follow this convention, the
		[Consolidate.js](https://github.com/visionmedia/consolidate.js)
		library was created to map all of node's popular template
		engines to follow this convention, thus allowing them to
		work seamlessly within Express.
	**/
	function engine(ext:String, fn:(path:String, options:Dynamic, callback:(e:Dynamic, rendered:String) -> Void) -> Void):Express;
	/**
		Assign `setting` to `val`, or return `setting`'s value.
		
		    app.set('foo', 'bar');
		    app.get('foo');
		    // => "bar"
		    app.set('foo', ['bar', 'baz']);
		    app.get('foo');
		    // => ["bar", "baz"]
		
		Mounted servers inherit their parent server's settings.
	**/
	function set(setting:String, val:Dynamic):Express;
	var get : Dynamic;
	/**
		Alternatively, you can pass only a callback, in which case you have the opportunity to alter the app.param()
	**/
	@:overload(function(callback:(name:String, matcher:js.lib.RegExp) -> RequestParamHandler):Express { })
	function param(name:ts.AnyOf2<String, Array<String>>, handler:RequestParamHandler):Express;
	/**
		Return the app's absolute pathname
		based on the parent(s) that have
		mounted it.
		
		For example if the application was
		mounted as "/admin", which itself
		was mounted as "/blog" then the
		return value would be "/blog/admin".
	**/
	function path():String;
	/**
		Check if `setting` is enabled (truthy).
		
		    app.enabled('foo')
		    // => false
		
		    app.enable('foo')
		    app.enabled('foo')
		    // => true
	**/
	function enabled(setting:String):Bool;
	/**
		Check if `setting` is disabled.
		
		    app.disabled('foo')
		    // => true
		
		    app.enable('foo')
		    app.disabled('foo')
		    // => false
	**/
	function disabled(setting:String):Bool;
	/**
		Enable `setting`.
	**/
	function enable(setting:String):Express;
	/**
		Disable `setting`.
	**/
	function disable(setting:String):Express;
	/**
		Render the given view `name` name with `options`
		and a callback accepting an error and the
		rendered template string.
		
		Example:
		
		    app.render('email', { name: 'Tobi' }, function(err, html){
		      // ...
		    })
	**/
	@:overload(function(name:String, callback:(err:ts.lib.Error, html:String) -> Void):Void { })
	function render(name:String, ?options:Dynamic, ?callback:(err:ts.lib.Error, html:String) -> Void):Void;
	/**
		Listen for connections.
		
		A node `http.Server` is returned, with this
		application (which is a `Function`) as its
		callback. If you wish to create both an HTTP
		and HTTPS server you may do so with the "http"
		and "https" modules as shown here:
		
		    var http = require('http')
		      , https = require('https')
		      , express = require('express')
		      , app = express();
		
		    http.createServer(app).listen(80);
		    https.createServer({ ... }, app).listen(443);
	**/
	@:overload(function(port:Float, hostname:String, ?callback:(args:haxe.extern.Rest<Dynamic>) -> Void):express_serve_static_core.http.Server { })
	@:overload(function(port:Float, ?callback:(args:haxe.extern.Rest<Dynamic>) -> Void):express_serve_static_core.http.Server { })
	@:overload(function(?callback:(args:haxe.extern.Rest<Dynamic>) -> Void):express_serve_static_core.http.Server { })
	@:overload(function(path:String, ?callback:(args:haxe.extern.Rest<Dynamic>) -> Void):express_serve_static_core.http.Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:() -> Void):express_serve_static_core.http.Server { })
	function listen(port:Float, hostname:String, backlog:Float, ?callback:(args:haxe.extern.Rest<Dynamic>) -> Void):express_serve_static_core.http.Server;
	var router : String;
	var settings : Dynamic;
	var resource : Dynamic;
	var map : Dynamic;
	var locals : Dynamic;
	/**
		The app.routes object houses all of the routes defined mapped by the
		associated HTTP verb. This object may be used for introspection
		capabilities, for example Express uses this internally not only for
		routing but to provide default OPTIONS behaviour unless app.options()
		is used. Your application or framework may also remove routes by
		simply by removing them from this object.
	**/
	var routes : Dynamic;
	/**
		Used to get all registered routes in Express Application
	**/
	var _router : Dynamic;
	var use : ApplicationRequestHandler<Express>;
	/**
		The mount event is fired on a sub-app, when it is mounted on a parent app.
		The parent app is passed to the callback function.
		
		NOTE:
		Sub-apps will:
		  - Not inherit the value of settings that have a default value. You must set the value in the sub-app.
		  - Inherit the value of settings with no default value.
	**/
	var on : (event:String, callback:(parent:Application) -> Void) -> Express;
	/**
		The app.mountpath property contains one or more path patterns on which a sub-app was mounted.
	**/
	var mountpath : ts.AnyOf2<String, Array<String>>;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Express;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Express;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Express;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Express;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Express;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Express;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Express;
	function setMaxListeners(n:Float):Express;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	/**
		Special-cased "all" method, applying the given route `path`,
		middleware, and callback to _every_ HTTP method.
	**/
	var all : IRouterMatcher<Express, String>;
	var post : IRouterMatcher<Express, String>;
	var put : IRouterMatcher<Express, String>;
	var delete : IRouterMatcher<Express, String>;
	var patch : IRouterMatcher<Express, String>;
	var options : IRouterMatcher<Express, String>;
	var head : IRouterMatcher<Express, String>;
	var checkout : IRouterMatcher<Express, Dynamic>;
	var connect : IRouterMatcher<Express, Dynamic>;
	var copy : IRouterMatcher<Express, Dynamic>;
	var lock : IRouterMatcher<Express, Dynamic>;
	var merge : IRouterMatcher<Express, Dynamic>;
	var mkactivity : IRouterMatcher<Express, Dynamic>;
	var mkcol : IRouterMatcher<Express, Dynamic>;
	var move : IRouterMatcher<Express, Dynamic>;
	@:native("m-search")
	var m_search : IRouterMatcher<Express, Dynamic>;
	var notify : IRouterMatcher<Express, Dynamic>;
	var propfind : IRouterMatcher<Express, Dynamic>;
	var proppatch : IRouterMatcher<Express, Dynamic>;
	var purge : IRouterMatcher<Express, Dynamic>;
	var report : IRouterMatcher<Express, Dynamic>;
	var search : IRouterMatcher<Express, Dynamic>;
	var subscribe : IRouterMatcher<Express, Dynamic>;
	var trace : IRouterMatcher<Express, Dynamic>;
	var unlock : IRouterMatcher<Express, Dynamic>;
	var unsubscribe : IRouterMatcher<Express, Dynamic>;
	function route(prefix:PathParams):IRoute;
	/**
		Stack of configured routes
	**/
	var stack : Array<Dynamic>;
};