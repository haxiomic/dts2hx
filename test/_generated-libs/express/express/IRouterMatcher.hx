package express;
typedef IRouterMatcher<T> = {
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):T { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):T { })
	@:selfCall
	function call<P, ResBody, ReqBody, ReqQuery>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery>>):T;
};