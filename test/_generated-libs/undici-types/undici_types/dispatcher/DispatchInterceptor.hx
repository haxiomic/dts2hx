package undici_types.dispatcher;

typedef DispatchInterceptor = (dispatch:(options:DispatchOptions, handler:DispatchHandlers) -> Bool) -> ((options:DispatchOptions, handler:DispatchHandlers) -> Bool);