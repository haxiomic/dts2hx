package js.html;
extern interface TransitionEventInit extends EventInit {
	@:optional
	var elapsedTime : Float;
	@:optional
	var propertyName : String;
	@:optional
	var pseudoElement : String;
}