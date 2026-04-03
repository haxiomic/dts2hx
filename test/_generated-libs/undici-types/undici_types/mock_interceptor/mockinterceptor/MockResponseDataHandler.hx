package undici_types.mock_interceptor.mockinterceptor;

typedef MockResponseDataHandler<TData> = (opts:MockResponseCallbackOptions) -> ts.AnyOf3<String, global.Buffer<js.lib.ArrayBufferLike>, TData>;