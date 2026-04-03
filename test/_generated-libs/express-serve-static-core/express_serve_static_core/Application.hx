package express_serve_static_core;

@:forward
abstract Application<LocalsObj>(ApplicationTypedef<LocalsObj>) from ApplicationTypedef<LocalsObj> to ApplicationTypedef<LocalsObj> {
	/**
		Access the native `m-search` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'm-search');
		```
	**/
	@:selfCall
	inline function call(req:ts.AnyOf2<node.http.IncomingMessage, Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>>, res:ts.AnyOf2<Response<Dynamic, haxe.DynamicAccess<Dynamic>, Float>, node.http.ServerResponse<node.http.IncomingMessage>>):Dynamic return (cast this : ApplicationTypedef<LocalsObj>).call(req, res);
}
