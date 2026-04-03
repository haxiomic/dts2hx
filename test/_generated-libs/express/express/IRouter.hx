package express;

@:forward
abstract IRouter(IRouterTypedef) from IRouterTypedef to IRouterTypedef {
	/**
		Access the native `m-search` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'm-search');
		```
	**/
	@:selfCall
	inline function call(req:express_serve_static_core.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, res:express_serve_static_core.Response<Dynamic, haxe.DynamicAccess<Dynamic>, Float>, next:express_serve_static_core.NextFunction):Any return (cast this : IRouterTypedef).call(req, res, next);
}
