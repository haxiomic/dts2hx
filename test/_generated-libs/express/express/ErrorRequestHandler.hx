package express;

typedef ErrorRequestHandler<P, ResBody, ReqBody, ReqQuery, Locals> = (err:Dynamic, req:express_serve_static_core.Request<P, ResBody, ReqBody, ReqQuery, Locals>, res:express_serve_static_core.Response<ResBody, Locals, Float>, next:express_serve_static_core.NextFunction) -> Any;