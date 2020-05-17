package express_serve_static_core;

typedef Handler = (req:Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>, res:Response<Dynamic>, next:NextFunction) -> Dynamic;