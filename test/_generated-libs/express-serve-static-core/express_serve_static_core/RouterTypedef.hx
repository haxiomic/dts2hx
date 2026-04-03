package express_serve_static_core;

typedef RouterTypedef = {
	@:selfCall
	function call(req:Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, res:Response<Dynamic, haxe.DynamicAccess<Dynamic>, Float>, next:NextFunction):Any;
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
	**/
	function param(name:String, handler:RequestParamHandler):Router;
	/**
		Special-cased "all" method, applying the given route `path`,
		middleware, and callback to _every_ HTTP method.
	**/
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function all<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function get<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function post<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function put<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function delete<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function patch<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function options<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function head<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function checkout<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function connect<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function copy<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function lock<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function merge<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function mkactivity<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function mkcol<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function move<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:native("m-search")
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function m_search<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function notify<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function propfind<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function proppatch<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function purge<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function report<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function search<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function subscribe<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function trace<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function unlock<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function unsubscribe<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function link<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function unlink<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<Route:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Route, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<Path:(ts.AnyOf2<String, js.lib.RegExp>), P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:Path, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):Router { })
	@:overload(function(path:PathParams, subApplication:Application<haxe.DynamicAccess<Dynamic>>):Router { })
	dynamic function use(handlers:haxe.extern.Rest<RequestHandler<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):Router;
	@:overload(function(prefix:PathParams):IRoute<String> { })
	function route<T:(ts.AnyOf2<String, js.lib.RegExp>)>(prefix:T):IRoute<T>;
	/**
		Stack of configured routes
	**/
	var stack : Array<ILayer>;
};