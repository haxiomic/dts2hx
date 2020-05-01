package ts.html;
typedef AnimationEventInit = {
	@:optional
	var animationName : String;
	@:optional
	var elapsedTime : Float;
	@:optional
	var pseudoElement : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};