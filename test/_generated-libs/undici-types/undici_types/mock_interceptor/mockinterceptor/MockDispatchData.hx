package undici_types.mock_interceptor.mockinterceptor;

typedef MockDispatchData<TData, TError:(js.lib.Error)> = {
	var error : Null<TError>;
	@:optional
	var statusCode : Float;
	@:optional
	var data : ts.AnyOf2<String, TData>;
	@:optional
	var headers : haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>;
	@:optional
	var trailers : haxe.DynamicAccess<String>;
};