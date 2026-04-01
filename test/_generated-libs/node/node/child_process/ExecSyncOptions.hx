package node.child_process;

typedef ExecSyncOptions = {
	@:optional
	var input : ts.AnyOf3<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer>;
	@:optional
	var stdio : StdioOptions;
	@:optional
	var shell : String;
	@:optional
	var killSignal : ts.AnyOf2<String, Float>;
	@:optional
	var maxBuffer : Float;
	@:optional
	var encoding : String;
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