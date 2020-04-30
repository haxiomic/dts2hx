package global;
extern typedef NodeRequire = {
	@:selfCall
	function call(id:String):Any;
	var resolve : RequireResolve;
	var cache : Any;
	var extensions : NodeExtensions;
	var main : Null<NodeModule>;
};