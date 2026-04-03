package undici_types.mock_interceptor.mockinterceptor;

typedef MockResponseOptions = {
	@:optional
	var headers : haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>;
	@:optional
	var trailers : haxe.DynamicAccess<String>;
};