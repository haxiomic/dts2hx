package js.html;
extern typedef KeyframeAnimationOptions = {
	@:optional
	var id : String;
	@:optional
	var composite : String;
	@:optional
	var iterationComposite : String;
	@:optional
	var delay : Float;
	@:optional
	var direction : String;
	@:optional
	var duration : haxe.extern.EitherType<String, Float>;
	@:optional
	var easing : String;
	@:optional
	var endDelay : Float;
	@:optional
	var fill : String;
	@:optional
	var iterationStart : Float;
	@:optional
	var iterations : Float;
};