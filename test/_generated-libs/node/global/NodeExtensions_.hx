package global;

typedef NodeExtensions_ = {
	@:native(".js")
	dynamic function _js(m:NodeModule, filename:String):Dynamic;
	@:native(".json")
	dynamic function _json(m:NodeModule, filename:String):Dynamic;
	@:native(".node")
	dynamic function _node(m:NodeModule, filename:String):Dynamic;
};