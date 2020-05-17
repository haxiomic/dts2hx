package express;

typedef IRoute = {
	var path : String;
	var stack : Dynamic;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function all(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function get(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function post(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function put(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function delete(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function patch(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function options(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function head(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function checkout(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function copy(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function lock(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function merge(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function mkactivity(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function mkcol(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function move(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:native("m-search")
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function m_search(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function notify(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function purge(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function report(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function search(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function subscribe(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function trace(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function unlock(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
	@:overload(function(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute { })
	dynamic function unsubscribe(handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):IRoute;
};