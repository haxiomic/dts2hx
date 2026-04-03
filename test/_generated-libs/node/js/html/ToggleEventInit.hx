package js.html;

typedef ToggleEventInit = {
	@:optional
	var newState : String;
	@:optional
	var oldState : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};