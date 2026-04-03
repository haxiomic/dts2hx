package undici_types.default_;

@:jsRequire("undici-types", "default.RetryHandler") extern class RetryHandler {
	function new(options:undici_types.dispatcher.DispatchOptions & { @:optional var retryOptions : undici_types.retryhandler.RetryOptions; }, retryHandlers:undici_types.retryhandler.RetryHandlers);
	static var prototype : undici_types.RetryHandler;
}