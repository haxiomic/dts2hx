package global.nodejs;

typedef RequireExtensionsTypedef = {
	@:native(".js")
	dynamic function _js(module:Module, filename:String):Dynamic;
	@:native(".json")
	dynamic function _json(module:Module, filename:String):Dynamic;
	@:native(".node")
	dynamic function _node(module:Module, filename:String):Dynamic;
};