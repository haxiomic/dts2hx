package ts.html;
typedef FocusEventInit = {
	@:optional
	var relatedTarget : EventTarget;
	@:optional
	var detail : Float;
	@:optional
	var view : Window;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};