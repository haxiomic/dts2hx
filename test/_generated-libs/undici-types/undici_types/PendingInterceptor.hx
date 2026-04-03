package undici_types;

typedef PendingInterceptor = {
	var origin : String;
	var times : Null<Float>;
	var persist : Bool;
	var consumed : Bool;
	var data : undici_types.mock_interceptor.mockinterceptor.MockDispatchData<Dynamic, js.lib.Error>;
	/**
		Path to intercept on.
	**/
	var path : ts.AnyOf3<String, js.lib.RegExp, (path:String) -> Bool>;
	/**
		Method to intercept on. Defaults to GET.
	**/
	@:optional
	var method : ts.AnyOf3<String, js.lib.RegExp, (method:String) -> Bool>;
	/**
		Body to intercept on.
	**/
	@:optional
	var body : ts.AnyOf3<String, js.lib.RegExp, (body:String) -> Bool>;
	/**
		Headers to intercept on.
	**/
	@:optional
	var headers : ts.AnyOf2<haxe.DynamicAccess<ts.AnyOf3<String, js.lib.RegExp, (body:String) -> Bool>>, (headers:haxe.DynamicAccess<String>) -> Bool>;
	/**
		Query params to intercept on
	**/
	@:optional
	var query : haxe.DynamicAccess<Dynamic>;
};