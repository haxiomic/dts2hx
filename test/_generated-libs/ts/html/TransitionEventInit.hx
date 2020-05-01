package ts.html;
typedef TransitionEventInit = {
	@:optional
	var elapsedTime : Float;
	@:optional
	var propertyName : String;
	@:optional
	var pseudoElement : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};