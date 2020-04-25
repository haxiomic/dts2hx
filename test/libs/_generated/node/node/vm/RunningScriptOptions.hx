package node.vm;
extern interface RunningScriptOptions extends BaseOptions {
	@:optional
	var displayErrors : Null<Bool>;
	@:optional
	var timeout : Null<Float>;
}