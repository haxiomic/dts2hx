package ts.html;
typedef AnalyserOptions = {
	@:optional
	var fftSize : Float;
	@:optional
	var maxDecibels : Float;
	@:optional
	var minDecibels : Float;
	@:optional
	var smoothingTimeConstant : Float;
	@:optional
	var channelCount : Float;
	@:optional
	var channelCountMode : String;
	@:optional
	var channelInterpretation : String;
};