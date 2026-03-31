package express_serve_static_core;

typedef Router = {
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
	@:overload(function(callback:(name:String, matcher:js.lib.RegExp) -> RequestParamHandler):Router { })
	function param(name:String, handler:RequestParamHandler):Router;
	/**
		Special-cased "all" method, applying the given route `path`,
		middleware, and callback to _every_ HTTP method.
	**/
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function all<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function get<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function post<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function put<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function delete<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function patch<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function options<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function head<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function checkout<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function connect<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function copy<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function lock<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function merge<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function mkactivity<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function mkcol<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function move<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:native("m-search")
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function m_search<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function notify<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function propfind<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function proppatch<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function purge<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function report<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function search<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function subscribe<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function trace<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function unlock<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function unsubscribe<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):Router { })
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function<P:(Params), ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application):Router { })
	dynamic function use(handlers:haxe.extern.Rest<RequestHandler<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):Router;
	function route(prefix:PathParams):IRoute;
	/**
		Stack of configured routes
	**/
	var stack : Array<Dynamic>;
};