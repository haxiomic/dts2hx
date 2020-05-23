package node.child_process;

typedef SpawnOptions = {
	@:optional
	var argv0 : String;
	@:optional
	var stdio : StdioOptions;
	@:optional
	var detached : Bool;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	@:optional
	var windowsVerbatimArguments : Bool;
	@:optional
	var windowsHide : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : String;
	@:optional
	var env : global.nodejs.ProcessEnv;
};