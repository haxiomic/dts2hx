package express;

typedef RequestHandler<P, ResBody, ReqBody, ReqQuery, Locals> = (req:express_serve_static_core.Request<P, ResBody, ReqBody, ReqQuery, Locals>, res:express_serve_static_core.Response<ResBody, Locals, Float>, next:express_serve_static_core.NextFunction) -> Any;