package express;
typedef IRouter = {
	@:selfCall
	function call(req:express_serve_static_core.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>, res:express_serve_static_core.Response<Dynamic>, next:express_serve_static_core.NextFunction):Dynamic;
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
	@:overload(function(callback:(name:String, matcher:js.lib.RegExp) -> express_serve_static_core.RequestParamHandler):IRouter { })
	function param(name:String, handler:express_serve_static_core.RequestParamHandler):IRouter;
	/**
		Special-cased "all" method, applying the given route `path`,
		middleware, and callback to _every_ HTTP method.
	**/
	var all : express_serve_static_core.IRouterMatcher<IRouter, String>;
	var get : express_serve_static_core.IRouterMatcher<IRouter, String>;
	var post : express_serve_static_core.IRouterMatcher<IRouter, String>;
	var put : express_serve_static_core.IRouterMatcher<IRouter, String>;
	var delete : express_serve_static_core.IRouterMatcher<IRouter, String>;
	var patch : express_serve_static_core.IRouterMatcher<IRouter, String>;
	var options : express_serve_static_core.IRouterMatcher<IRouter, String>;
	var head : express_serve_static_core.IRouterMatcher<IRouter, String>;
	var checkout : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var connect : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var copy : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var lock : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var merge : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var mkactivity : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var mkcol : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var move : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	@:native("m-search")
	var m_search : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var notify : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var propfind : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var proppatch : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var purge : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var report : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var search : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var subscribe : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var trace : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var unlock : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var unsubscribe : express_serve_static_core.IRouterMatcher<IRouter, Dynamic>;
	var use : Dynamic;
	function route(prefix:express_serve_static_core.PathParams):express_serve_static_core.IRoute;
	/**
		Stack of configured routes
	**/
	var stack : Array<Dynamic>;
};