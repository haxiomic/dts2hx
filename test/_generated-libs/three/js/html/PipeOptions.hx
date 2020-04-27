package js.html;
extern interface PipeOptions {
	@:optional
	var preventAbort : Bool;
	@:optional
	var preventCancel : Bool;
	@:optional
	var preventClose : Bool;
	@:optional
	var signal : AbortSignal;
}