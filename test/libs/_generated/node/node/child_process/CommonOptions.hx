package node.child_process;
extern interface CommonOptions extends ProcessEnvOptions {
	@:optional
	var windowsHide : Null<Bool>;
	@:optional
	var timeout : Null<Float>;
}