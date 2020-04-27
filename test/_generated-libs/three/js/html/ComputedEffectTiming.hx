package js.html;
extern interface ComputedEffectTiming extends EffectTiming {
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
}