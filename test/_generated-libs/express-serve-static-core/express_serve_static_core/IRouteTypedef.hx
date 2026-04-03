package express_serve_static_core;

typedef IRouteTypedef<Route:(ts.AnyOf2<String, js.lib.RegExp>)> = {
	var path : String;
	var stack : Array<ILayer>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function all(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function get(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function post(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function put(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function delete(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function patch(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function options(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function head(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function checkout(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function copy(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function lock(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function merge(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function mkactivity(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function mkcol(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function move(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:native("m-search")
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function m_search(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function notify(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function purge(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function report(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function search(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function subscribe(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function trace(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function unlock(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	@:overload(function<P, ResBody, ReqBody, ReqQuery, LocalsObj:(haxe.DynamicAccess<Dynamic>)>(handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, LocalsObj>>):IRoute<Route> { })
	dynamic function unsubscribe(handlers:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>):IRoute<Route>;
};