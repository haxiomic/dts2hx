package ts.html;
extern typedef PipeOptions = {
	@:optional
	var preventAbort : Bool;
	@:optional
	var preventCancel : Bool;
	@:optional
	var preventClose : Bool;
	@:optional
	var signal : IAbortSignal;
};