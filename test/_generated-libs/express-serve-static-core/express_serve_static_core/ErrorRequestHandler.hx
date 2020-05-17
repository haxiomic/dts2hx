package express_serve_static_core;

typedef ErrorRequestHandler<P, ResBody, ReqBody, ReqQuery> = (err:Dynamic, req:Request<P, ResBody, ReqBody, ReqQuery>, res:Response<ResBody>, next:NextFunction) -> Dynamic;