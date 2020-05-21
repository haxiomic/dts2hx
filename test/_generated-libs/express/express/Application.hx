package express;

typedef Application = {
	/**
		Express instance itself is a request handler, which could be invoked without
		third argument.
	**/
	@:overload(function(req:express_serve_static_core.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>, res:express_serve_static_core.Response<Dynamic>, next:express_serve_static_core.NextFunction):Dynamic { })
	@:selfCall
	function call(req:ts.AnyOf2<node.http.IncomingMessage, express_serve_static_core.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>, res:ts.AnyOf2<node.http.ServerResponse, express_serve_static_core.Response<Dynamic>>):Dynamic;
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
	function engine(ext:String, fn:(path:String, options:Dynamic, callback:(e:Dynamic, rendered:String) -> Void) -> Void):Application;
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
	function set(setting:String, val:Dynamic):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function get(name:String):Dynamic;
	/**
		Alternatively, you can pass only a callback, in which case you have the opportunity to alter the app.param()
	**/
	@:overload(function(callback:(name:String, matcher:js.lib.RegExp) -> express_serve_static_core.RequestParamHandler):Application { })
	function param(name:ts.AnyOf2<String, Array<String>>, handler:express_serve_static_core.RequestParamHandler):Application;
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
	function enable(setting:String):Application;
	/**
		Disable `setting`.
	**/
	function disable(setting:String):Application;
	/**
		Render the given view `name` name with `options`
		and a callback accepting an error and the
		rendered template string.
		
		Example:
		
		    app.render('email', { name: 'Tobi' }, function(err, html){
		      // ...
		    })
	**/
	@:overload(function(name:String, callback:(err:js.lib.Error, html:String) -> Void):Void { })
	function render(name:String, ?options:Dynamic, ?callback:(err:js.lib.Error, html:String) -> Void):Void;
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
	@:overload(function(port:Float, hostname:String, ?callback:(args:haxe.extern.Rest<Dynamic>) -> Void):node.http.Server { })
	@:overload(function(port:Float, ?callback:(args:haxe.extern.Rest<Dynamic>) -> Void):node.http.Server { })
	@:overload(function(?callback:(args:haxe.extern.Rest<Dynamic>) -> Void):node.http.Server { })
	@:overload(function(path:String, ?callback:(args:haxe.extern.Rest<Dynamic>) -> Void):node.http.Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:() -> Void):node.http.Server { })
	function listen(port:Float, hostname:String, backlog:Float, ?callback:(args:haxe.extern.Rest<Dynamic>) -> Void):node.http.Server;
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
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):Application { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function use(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):Application;
	/**
		The mount event is fired on a sub-app, when it is mounted on a parent app.
		The parent app is passed to the callback function.
		
		NOTE:
		Sub-apps will:
		  - Not inherit the value of settings that have a default value. You must set the value in the sub-app.
		  - Inherit the value of settings with no default value.
	**/
	dynamic function on(event:String, callback:(parent:express_serve_static_core.Application) -> Void):Application;
	/**
		The app.mountpath property contains one or more path patterns on which a sub-app was mounted.
	**/
	var mountpath : ts.AnyOf2<String, Array<String>>;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Application;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Application;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Application;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Application;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Application;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Application;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Application;
	function setMaxListeners(n:Float):Application;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	/**
		Special-cased "all" method, applying the given route `path`,
		middleware, and callback to _every_ HTTP method.
	**/
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function all<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function post<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function put<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function delete<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function patch<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function options<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function head<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function checkout<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function connect<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function copy<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function lock<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function merge<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function mkactivity<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function mkcol<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function move<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:native("m-search")
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function m_search<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function notify<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function propfind<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function proppatch<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function purge<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function report<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function search<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function subscribe<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function trace<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function unlock<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Application { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Application { })
	dynamic function unsubscribe<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Application;
	function route(prefix:express_serve_static_core.PathParams):express_serve_static_core.IRoute;
	/**
		Stack of configured routes
	**/
	var stack : Array<Dynamic>;
};