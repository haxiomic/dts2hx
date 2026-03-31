package express_serve_static_core;

typedef IRouter = {
	@:selfCall
	function call(req:Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>, res:Response<Dynamic>, next:NextFunction):Dynamic;
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
	@:overload(function(callback:(name:String, matcher:js.lib.RegExp) -> RequestParamHandler):IRouter { })
	function param(name:String, handler:RequestParamHandler):IRouter;
	/**
		Special-cased "all" method, applying the given route `path`,
		middleware, and callback to _every_ HTTP method.
	**/
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function all<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function get<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function post<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function put<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function delete<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function patch<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function options<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function head<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function checkout<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function connect<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function copy<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function lock<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function merge<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function mkactivity<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function mkcol<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function move<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:native("m-search")
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function m_search<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function notify<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function propfind<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function proppatch<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function purge<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function report<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function search<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function subscribe<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function trace<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function unlock<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function unsubscribe<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRouter { })
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):IRouter { })
	@:overload(function(path:PathParams, subApplication:Application):IRouter { })
	dynamic function use(handlers:haxe.extern.Rest<RequestHandler<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRouter;
	function route(prefix:PathParams):IRoute;
	/**
		Stack of configured routes
	**/
	var stack : Array<Dynamic>;
};