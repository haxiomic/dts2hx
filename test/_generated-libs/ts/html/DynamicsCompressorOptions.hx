package ts.html;
typedef DynamicsCompressorOptions = {
	@:optional
	var attack : Float;
	@:optional
	var knee : Float;
	@:optional
	var ratio : Float;
	@:optional
	var release : Float;
	@:optional
	var threshold : Float;
	@:optional
	var channelCount : Float;
	@:optional
	var channelCountMode : String;
	@:optional
	var channelInterpretation : String;
};