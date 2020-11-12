package express_serve_static_core;

typedef IRouterHandler<T> = ts.AnyOf2<(handlers:haxe.extern.Rest<RequestHandler<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>) -> T, (handlers:haxe.extern.Rest<RequestHandlerParams<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>) -> T>;