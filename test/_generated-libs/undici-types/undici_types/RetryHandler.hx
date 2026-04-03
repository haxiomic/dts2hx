package undici_types;

@:jsRequire("undici-types", "RetryHandler") extern class RetryHandler {
	function new(options:undici_types.dispatcher.DispatchOptions & { @:optional var retryOptions : undici_types.retryhandler.RetryOptions; }, retryHandlers:undici_types.retryhandler.RetryHandlers);
	static var prototype : RetryHandler;
}