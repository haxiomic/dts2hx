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
	var all : IRouterMatcher<Router, String>;
	var get : IRouterMatcher<Router, String>;
	var post : IRouterMatcher<Router, String>;
	var put : IRouterMatcher<Router, String>;
	var delete : IRouterMatcher<Router, String>;
	var patch : IRouterMatcher<Router, String>;
	var options : IRouterMatcher<Router, String>;
	var head : IRouterMatcher<Router, String>;
	var checkout : IRouterMatcher<Router, Dynamic>;
	var connect : IRouterMatcher<Router, Dynamic>;
	var copy : IRouterMatcher<Router, Dynamic>;
	var lock : IRouterMatcher<Router, Dynamic>;
	var merge : IRouterMatcher<Router, Dynamic>;
	var mkactivity : IRouterMatcher<Router, Dynamic>;
	var mkcol : IRouterMatcher<Router, Dynamic>;
	var move : IRouterMatcher<Router, Dynamic>;
	@:native("m-search")
	var m_search : IRouterMatcher<Router, Dynamic>;
	var notify : IRouterMatcher<Router, Dynamic>;
	var propfind : IRouterMatcher<Router, Dynamic>;
	var proppatch : IRouterMatcher<Router, Dynamic>;
	var purge : IRouterMatcher<Router, Dynamic>;
	var report : IRouterMatcher<Router, Dynamic>;
	var search : IRouterMatcher<Router, Dynamic>;
	var subscribe : IRouterMatcher<Router, Dynamic>;
	var trace : IRouterMatcher<Router, Dynamic>;
	var unlock : IRouterMatcher<Router, Dynamic>;
	var unsubscribe : IRouterMatcher<Router, Dynamic>;
	var use : Dynamic;
	function route(prefix:PathParams):IRoute;
	/**
		Stack of configured routes
	**/
	var stack : Array<Dynamic>;
};