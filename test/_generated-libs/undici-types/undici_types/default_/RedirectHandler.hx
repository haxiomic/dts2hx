package undici_types.default_;

@:jsRequire("undici-types", "default.RedirectHandler") extern class RedirectHandler {
	function new(dispatch:undici_types.Dispatcher, maxRedirections:Float, opts:undici_types.dispatcher.DispatchOptions, handler:undici_types.dispatcher.DispatchHandlers, redirectionLimitReached:Bool);
	static var prototype : undici_types.RedirectHandler;
}