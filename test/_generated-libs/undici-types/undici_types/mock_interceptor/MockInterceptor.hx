package undici_types.mock_interceptor;

/**
	The interceptor for a Mock.
**/
@:jsRequire("undici-types/mock-interceptor", "MockInterceptor") extern class MockInterceptor {
	function new(options:undici_types.mock_interceptor.mockinterceptor.Options, mockDispatches:Array<undici_types.mock_interceptor.mockinterceptor.MockDispatch<Dynamic, js.lib.Error>>);
	/**
		Mock an undici request with the defined reply.
	**/
	@:overload(function<TData:(Dynamic)>(statusCode:Float, ?data:ts.AnyOf4<String, global.Buffer<js.lib.ArrayBufferLike>, TData, undici_types.mock_interceptor.mockinterceptor.MockResponseDataHandler<TData>>, ?responseOptions:undici_types.mock_interceptor.mockinterceptor.MockResponseOptions):MockScope<TData> { })
	function reply<TData:(Dynamic)>(replyOptionsCallback:undici_types.mock_interceptor.mockinterceptor.MockReplyOptionsCallback<TData>):MockScope<TData>;
	/**
		Mock an undici request by throwing the defined reply error.
	**/
	function replyWithError<TError:(js.lib.Error)>(error:TError):MockScope<Dynamic>;
	/**
		Set default reply headers on the interceptor for subsequent mocked replies.
	**/
	function defaultReplyHeaders(headers:haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>):MockInterceptor;
	/**
		Set default reply trailers on the interceptor for subsequent mocked replies.
	**/
	function defaultReplyTrailers(trailers:haxe.DynamicAccess<String>):MockInterceptor;
	/**
		Set automatically calculated content-length header on subsequent mocked replies.
	**/
	function replyContentLength():MockInterceptor;
	static var prototype : MockInterceptor;
}