package express_serve_static_core;

typedef RequestHandler<P, ResBody, ReqBody, ReqQuery, LocalsObj> = (req:Request<P, ResBody, ReqBody, ReqQuery, LocalsObj>, res:Response<ResBody, LocalsObj, Float>, next:NextFunction) -> Any;