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
	var all : IRouterMatcher<IRouter, String>;
	var get : IRouterMatcher<IRouter, String>;
	var post : IRouterMatcher<IRouter, String>;
	var put : IRouterMatcher<IRouter, String>;
	var delete : IRouterMatcher<IRouter, String>;
	var patch : IRouterMatcher<IRouter, String>;
	var options : IRouterMatcher<IRouter, String>;
	var head : IRouterMatcher<IRouter, String>;
	var checkout : IRouterMatcher<IRouter, Dynamic>;
	var connect : IRouterMatcher<IRouter, Dynamic>;
	var copy : IRouterMatcher<IRouter, Dynamic>;
	var lock : IRouterMatcher<IRouter, Dynamic>;
	var merge : IRouterMatcher<IRouter, Dynamic>;
	var mkactivity : IRouterMatcher<IRouter, Dynamic>;
	var mkcol : IRouterMatcher<IRouter, Dynamic>;
	var move : IRouterMatcher<IRouter, Dynamic>;
	@:native("m-search")
	var m_search : IRouterMatcher<IRouter, Dynamic>;
	var notify : IRouterMatcher<IRouter, Dynamic>;
	var propfind : IRouterMatcher<IRouter, Dynamic>;
	var proppatch : IRouterMatcher<IRouter, Dynamic>;
	var purge : IRouterMatcher<IRouter, Dynamic>;
	var report : IRouterMatcher<IRouter, Dynamic>;
	var search : IRouterMatcher<IRouter, Dynamic>;
	var subscribe : IRouterMatcher<IRouter, Dynamic>;
	var trace : IRouterMatcher<IRouter, Dynamic>;
	var unlock : IRouterMatcher<IRouter, Dynamic>;
	var unsubscribe : IRouterMatcher<IRouter, Dynamic>;
	var use : Dynamic;
	function route(prefix:PathParams):IRoute;
	/**
		Stack of configured routes
	**/
	var stack : Array<Dynamic>;
};