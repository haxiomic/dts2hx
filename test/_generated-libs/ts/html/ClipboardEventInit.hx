package ts.html;
typedef ClipboardEventInit = {
	@:optional
	var clipboardData : DataTransfer;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};