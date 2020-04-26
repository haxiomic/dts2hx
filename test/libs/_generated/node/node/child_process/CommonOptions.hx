package node.child_process;
extern interface CommonOptions extends ProcessEnvOptions {
	@:optional
	var windowsHide : Bool;
	@:optional
	var timeout : Float;
}