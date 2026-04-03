package express_serve_static_core;

typedef ErrorRequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj> = (err:Dynamic, req:Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>, res:Response<ResBody, LocalsObj, Float>, next:NextFunction) -> Any;