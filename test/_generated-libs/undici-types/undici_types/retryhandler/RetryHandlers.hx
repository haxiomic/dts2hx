package undici_types.retryhandler;

typedef RetryHandlers = {
	dynamic function dispatch(options:undici_types.dispatcher.DispatchOptions, handler:undici_types.dispatcher.DispatchHandlers):Bool;
	var handler : undici_types.dispatcher.DispatchHandlers;
};