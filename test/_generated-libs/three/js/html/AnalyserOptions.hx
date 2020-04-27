package js.html;
extern interface AnalyserOptions extends AudioNodeOptions {
	@:optional
	var fftSize : Float;
	@:optional
	var maxDecibels : Float;
	@:optional
	var minDecibels : Float;
	@:optional
	var smoothingTimeConstant : Float;
}