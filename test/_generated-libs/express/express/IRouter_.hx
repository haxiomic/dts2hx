package express;

typedef IRouter_ = {
	@:selfCall
	function call_(req:express_serve_static_core.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>, res:express_serve_static_core.Response<Dynamic>, next:express_serve_static_core.NextFunction):Dynamic;
	@:selfCall
	function call(?options:RouterOptions):express_serve_static_core.Router;
	/**
		Map the given param placeholder `name`(s) to the given callback(s).
		
		Parameter mapping is used to provide pre-conditions to routes
		which use normalized placeholders. For example a _:user_id_ parameter
		could automatically load a user's information from the database without
		any additional code,
		
		The callback uses the samesignature as middleware, the only differencing
		being that the value of the placeholder is passed, in this case the _id_
		of the user. Once the `next()` function is invoked, just like middleware
		it will continue on to execute the route, or subsequent parameter functions.
		
		      app.param('user_id', function(req, res, next, id){
		        User.find(id, function(err, user){
		          if (err) {
		            next(err);
		          } else if (user) {
		            req.user = user;
		            next();
		          } else {
		            next(new Error('failed to load user'));
		          }
		        });
		      });
		
		Alternatively, you can pass only a callback, in which case you have the opportunity to alter the app.param()
	**/
	@:overload(function(callback:(name:String, matcher:js.lib.RegExp) -> express_serve_static_core.RequestParamHandler):Router { })
	function param(name:String, handler:express_serve_static_core.RequestParamHandler):Router;
	/**
		Special-cased "all" method, applying the given route `path`,
		middleware, and callback to _every_ HTTP method.
	**/
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function all<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function get<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function post<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function put<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function delete<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function patch<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function options<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function head<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function checkout<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function connect<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function copy<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function lock<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function merge<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function mkactivity<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function mkcol<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function move<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:native("m-search")
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function m_search<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function notify<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function propfind<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function proppatch<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function purge<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function report<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function search<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function subscribe<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function trace<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function unlock<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function unsubscribe<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):Router { })
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):Router { })
	dynamic function use(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):Router;
	function route(prefix:express_serve_static_core.PathParams):express_serve_static_core.IRoute;
	/**
		Stack of configured routes
	**/
	var stack : Array<Dynamic>;
};