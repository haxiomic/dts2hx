package undici_types;

@:jsRequire("undici-types/global-dispatcher") @valueModuleOnly extern class GlobalDispatcher {
	static function getGlobalDispatcher():Dispatcher;
	static function setGlobalDispatcher<DispatcherImplementation:(Dispatcher)>(dispatcher:DispatcherImplementation):Void;
}