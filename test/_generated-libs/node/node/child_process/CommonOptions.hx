package node.child_process;

typedef CommonOptions = {
	@:optional
	var windowsHide : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : ts.AnyOf2<String, node.url.URL>;
	@:optional
	var env : global.nodejs.ProcessEnv;
};