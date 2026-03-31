package express;

typedef ErrorRequestHandler<P:(express_serve_static_core.Params), ResBody, ReqBody, ReqQuery> = (err:Dynamic, req:express_serve_static_core.Request<P, ResBody, ReqBody, ReqQuery>, res:express_serve_static_core.Response<ResBody>, next:express_serve_static_core.NextFunction) -> Dynamic;