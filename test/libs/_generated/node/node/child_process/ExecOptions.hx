package node.child_process;
extern interface ExecOptions extends CommonOptions {
	@:optional
	var shell : Null<String>;
	@:optional
	var maxBuffer : Null<Float>;
	@:optional
	var killSignal : Null<String>;
}