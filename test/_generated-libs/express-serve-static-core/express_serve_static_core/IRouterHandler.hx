package express_serve_static_core;
typedef IRouterHandler<T> = {
	@:overload(function(handlers:haxe.extern.Rest<RequestHandlerParams<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):T { })
	@:selfCall
	function call(handlers:haxe.extern.Rest<RequestHandler<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>>):T;
};