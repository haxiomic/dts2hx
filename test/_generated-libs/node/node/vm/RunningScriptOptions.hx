package node.vm;
extern interface RunningScriptOptions extends BaseOptions {
	@:optional
	var displayErrors : Bool;
	@:optional
	var timeout : Float;
}