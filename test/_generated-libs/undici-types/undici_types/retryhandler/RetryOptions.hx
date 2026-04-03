package undici_types.retryhandler;

typedef RetryOptions = {
	/**
		Callback to be invoked on every retry iteration.
		It receives the error, current state of the retry object and the options object
		passed when instantiating the retry handler.
	**/
	@:optional
	dynamic function retry(err:js.lib.Error, context:{ var state : RetryState; var opts : undici_types.dispatcher.DispatchOptions & { @:optional var retryOptions : RetryOptions; }; }, callback:OnRetryCallback):Null<Float>;
	/**
		Maximum number of retries to allow.
	**/
	@:optional
	var maxRetries : Float;
	/**
		Max number of milliseconds allow between retries
	**/
	@:optional
	var maxTimeout : Float;
	/**
		Initial number of milliseconds to wait before retrying for the first time.
	**/
	@:optional
	var minTimeout : Float;
	/**
		Factior to multiply the timeout factor between retries.
	**/
	@:optional
	var timeoutFactor : Float;
	/**
		It enables to automatically infer timeout between retries based on the `Retry-After` header.
	**/
	@:optional
	var retryAfter : Bool;
	/**
		HTTP methods to retry.
	**/
	@:optional
	var methods : Array<undici_types.dispatcher.HttpMethod>;
	/**
		Error codes to be retried. e.g. `ECONNRESET`, `ENOTFOUND`, `ETIMEDOUT`, `ECONNREFUSED`, etc.
	**/
	@:optional
	var errorCodes : Array<String>;
	/**
		HTTP status codes to be retried.
	**/
	@:optional
	var statusCodes : Array<Float>;
};