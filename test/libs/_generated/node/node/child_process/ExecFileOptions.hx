package node.child_process;
extern interface ExecFileOptions extends CommonOptions {
	@:optional
	var maxBuffer : Float;
	@:optional
	var killSignal : String;
	@:optional
	var windowsVerbatimArguments : Bool;
}