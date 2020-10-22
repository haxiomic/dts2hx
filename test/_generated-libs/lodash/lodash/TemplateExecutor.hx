package lodash;

typedef TemplateExecutor = {
	@:selfCall
	function call(?data:Dynamic):String;
	var source : String;
};