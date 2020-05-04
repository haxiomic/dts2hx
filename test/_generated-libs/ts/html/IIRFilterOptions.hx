package ts.html;
typedef IIRFilterOptions = {
	var feedback : Array<Float>;
	var feedforward : Array<Float>;
	@:optional
	var channelCount : Float;
	@:optional
	var channelCountMode : String;
	@:optional
	var channelInterpretation : String;
};