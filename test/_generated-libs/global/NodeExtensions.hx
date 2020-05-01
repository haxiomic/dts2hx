package global;
extern typedef NodeExtensions = {
	@:native(".js")
	var _js : (m:NodeModule, filename:String) -> Dynamic;
	@:native(".json")
	var _json : (m:NodeModule, filename:String) -> Dynamic;
	@:native(".node")
	var _node : (m:NodeModule, filename:String) -> Dynamic;
};