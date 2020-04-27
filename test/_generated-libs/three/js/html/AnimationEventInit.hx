package js.html;
extern interface AnimationEventInit extends EventInit {
	@:optional
	var animationName : String;
	@:optional
	var elapsedTime : Float;
	@:optional
	var pseudoElement : String;
}