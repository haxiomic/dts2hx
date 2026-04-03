package express_serve_static_core;

@:forward
abstract Router(RouterTypedef) from RouterTypedef to RouterTypedef {
	/**
		Access the native `m-search` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'm-search');
		```
	**/
	@:selfCall
	inline function call(req:Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, res:Response<Dynamic, haxe.DynamicAccess<Dynamic>, Float>, next:NextFunction):Any return (cast this : RouterTypedef).call(req, res, next);
}
