package node.child_process;
extern interface ExecOptions extends CommonOptions {
	@:optional
	var shell : String;
	@:optional
	var maxBuffer : Float;
	@:optional
	var killSignal : String;
}