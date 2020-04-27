package global;
extern interface NodeRequire extends NodeRequireFunction {
	var resolve : RequireResolve;
	var cache : Any;
	var extensions : NodeExtensions;
	var main : Null<NodeModule>;
}