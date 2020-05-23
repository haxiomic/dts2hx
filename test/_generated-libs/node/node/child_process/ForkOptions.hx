package node.child_process;

typedef ForkOptions = {
	@:optional
	var execPath : String;
	@:optional
	var execArgv : Array<String>;
	@:optional
	var silent : Bool;
	@:optional
	var stdio : StdioOptions;
	@:optional
	var detached : Bool;
	@:optional
	var windowsVerbatimArguments : Bool;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : String;
	@:optional
	var env : global.nodejs.ProcessEnv;
};