package node.child_process;
extern interface ProcessEnvOptions {
	@:optional
	var uid : Null<Float>;
	@:optional
	var gid : Null<Float>;
	@:optional
	var cwd : Null<String>;
	@:optional
	var env : Null<global.nodejs.ProcessEnv>;
}