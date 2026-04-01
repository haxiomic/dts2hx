package express_serve_static_core;

typedef RequestHandlerParams<P, ResBody, ReqBody, ReqQuery> = ts.AnyOf3<RequestHandler<P, ResBody, ReqBody, ReqQuery>, ErrorRequestHandler<P, ResBody, ReqBody, ReqQuery>, Array<ts.AnyOf2<RequestHandler<P, Dynamic, Dynamic, qs.ParsedQs>, ErrorRequestHandler<P, Dynamic, Dynamic, qs.ParsedQs>>>>;