package ts.html;
extern typedef FocusEventInit = {
	@:optional
	var relatedTarget : IEventTarget;
	@:optional
	var detail : Float;
	@:optional
	var view : IWindow;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};