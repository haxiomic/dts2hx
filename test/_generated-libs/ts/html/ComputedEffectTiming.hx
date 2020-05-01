package ts.html;
extern typedef ComputedEffectTiming = {
	@:optional
	var activeDuration : Float;
	@:optional
	var currentIteration : Float;
	@:optional
	var endTime : Float;
	@:optional
	var localTime : Float;
	@:optional
	var progress : Float;
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