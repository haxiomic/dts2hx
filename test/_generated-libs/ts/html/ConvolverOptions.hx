package ts.html;
typedef ConvolverOptions = {
	@:optional
	var buffer : AudioBuffer;
	@:optional
	var disableNormalization : Bool;
	@:optional
	var channelCount : Float;
	@:optional
	var channelCountMode : String;
	@:optional
	var channelInterpretation : String;
};