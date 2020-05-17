package global;

typedef NodeRequire = {
	@:selfCall
	function call(id:String):Dynamic;
	var resolve : RequireResolve;
	var cache : Dynamic;
	var extensions : NodeExtensions;
	var main : Null<NodeModule>;
};