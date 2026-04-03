package undici_types.retryhandler;

typedef RetryCallback = (err:js.lib.Error, context:{ var state : RetryState; var opts : undici_types.dispatcher.DispatchOptions & { @:optional var retryOptions : RetryOptions; }; }, callback:OnRetryCallback) -> Null<Float>;