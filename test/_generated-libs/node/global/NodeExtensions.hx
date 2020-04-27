package global;
extern interface NodeExtensions {
	@:native(".js")
	var _js : (m:NodeModule, filename:String) -> Any;
	@:native(".json")
	var _json : (m:NodeModule, filename:String) -> Any;
	@:native(".node")
	var _node : (m:NodeModule, filename:String) -> Any;
}