package express;

typedef RequestHandler<P, ResBody, ReqBody, ReqQuery> = (req:express_serve_static_core.Request<P, ResBody, ReqBody, ReqQuery>, res:express_serve_static_core.Response<ResBody>, next:express_serve_static_core.NextFunction) -> Dynamic;