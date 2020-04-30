package ts.html;
extern typedef ClipboardEventInit = {
	@:optional
	var clipboardData : IDataTransfer;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};