package node.child_process;
extern interface ExecFileOptions extends CommonOptions {
	@:optional
	var maxBuffer : Null<Float>;
	@:optional
	var killSignal : Null<String>;
	@:optional
	var windowsVerbatimArguments : Null<Bool>;
}