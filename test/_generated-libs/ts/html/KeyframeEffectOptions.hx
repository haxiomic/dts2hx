package ts.html;
typedef KeyframeEffectOptions = {
	@:optional
	var composite : String;
	@:optional
	var iterationComposite : String;
	@:optional
	var delay : Float;
	@:optional
	var direction : String;
	@:optional
	var duration : ts.AnyOf2<String, Float>;
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