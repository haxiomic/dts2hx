package undici_types.dispatcher;

typedef DispatcherComposeInterceptor = (dispatch:(options:DispatchOptions, handler:DispatchHandlers) -> Bool) -> ((options:DispatchOptions, handler:DispatchHandlers) -> Bool);