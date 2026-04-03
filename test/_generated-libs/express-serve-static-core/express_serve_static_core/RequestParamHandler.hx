package express_serve_static_core;

typedef RequestParamHandler = (req:Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, res:Response<Dynamic, haxe.DynamicAccess<Dynamic>, Float>, next:NextFunction, value:Dynamic, name:String) -> Dynamic;