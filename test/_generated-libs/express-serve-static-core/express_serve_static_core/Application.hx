package express_serve_static_core;

@:forward
abstract Application(Application_) from Application_ to Application_ {
	/**
		Access the native `m-search` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'm-search');
		```
	**/
	@:selfCall
	inline function call(req:ts.AnyOf2<node.http.IncomingMessage, Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>, res:ts.AnyOf2<node.http.ServerResponse, Response<Dynamic>>):Dynamic return (cast this : Application_).call(req, res);
}
