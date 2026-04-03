package undici_types;

@:jsRequire("undici-types/connector") @valueModuleOnly extern class Connector {
	@:native("default")
	static function default_(?options:undici_types.buildconnector.BuildOptions):undici_types.buildconnector.Connector;
}