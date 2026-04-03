package undici_types.retryhandler;

typedef RetryContext = {
	var state : RetryState;
	var opts : undici_types.dispatcher.DispatchOptions & {
		@:optional
		var retryOptions : RetryOptions;
	};
};