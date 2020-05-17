package express_serve_static_core;
typedef RequestHandler<P, ResBody, ReqBody, ReqQuery> = {
	@:selfCall
	function call(req:Request<P, ResBody, ReqBody, ReqQuery>, res:Response<ResBody>, next:NextFunction):Dynamic;
};