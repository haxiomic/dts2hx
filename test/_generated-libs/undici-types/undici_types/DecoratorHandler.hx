package undici_types;

@:jsRequire("undici-types", "DecoratorHandler") extern class DecoratorHandler {
	function new(handler:undici_types.dispatcher.DispatchHandlers);
	static var prototype : DecoratorHandler;
}