package ts.html;
typedef ConvolverOptions = {
	@:optional
	var buffer : IAudioBuffer;
	@:optional
	var disableNormalization : Bool;
	@:optional
	var channelCount : Float;
	@:optional
	var channelCountMode : String;
	@:optional
	var channelInterpretation : String;
};