package js.html;

typedef PageSwapEventInit = {
	@:optional
	var activation : NavigationActivation;
	@:optional
	var viewTransition : ViewTransition;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};