package express_serve_static_core;

typedef IRouterMatcher<T, Method> = {
	@:overload(function<P, ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<P, ResBody, ReqBody, ReqQuery>>):T { })
	@:overload(function(path:PathParams, subApplication:Application):T { })
	@:selfCall
	function call<P, ResBody, ReqBody, ReqQuery>(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<P, ResBody, ReqBody, ReqQuery>>):T;
};