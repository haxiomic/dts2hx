package express;

@:forward
abstract Application(ApplicationTypedef) from ApplicationTypedef to ApplicationTypedef {
	/**
		Access the native `m-search` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'm-search');
		```
	**/
	@:selfCall
	inline function call(req:ts.AnyOf2<node.http.IncomingMessage, express_serve_static_core.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>, res:ts.AnyOf2<express_serve_static_core.Response<Dynamic, haxe.DynamicAccess<Dynamic>, Float>, node.http.ServerResponse<node.http.IncomingMessage>>):Dynamic return (cast this : ApplicationTypedef).call(req, res);
}
