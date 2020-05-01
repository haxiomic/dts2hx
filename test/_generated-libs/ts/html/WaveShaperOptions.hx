package ts.html;
typedef WaveShaperOptions = {
	@:optional
	var curve : ts.AnyOf2<ts.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var oversample : String;
	@:optional
	var channelCount : Float;
	@:optional
	var channelCountMode : String;
	@:optional
	var channelInterpretation : String;
};