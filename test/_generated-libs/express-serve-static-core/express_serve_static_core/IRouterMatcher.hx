package express_serve_static_core;

typedef IRouterMatcher<T, Method> = ts.AnyOf3<(path:PathParams, handlers:haxe.extern.Rest<RequestHandler<Any, Any, Any, Any>>) -> T, (path:PathParams, handlers:haxe.extern.Rest<RequestHandlerParams<Any, Any, Any, Any>>) -> T, (path:PathParams, subApplication:Application) -> T>;