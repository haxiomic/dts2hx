package node.child_process;
extern typedef ExecOptions = {
	@:optional
	var shell : String;
	@:optional
	var maxBuffer : Float;
	@:optional
	var killSignal : String;
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