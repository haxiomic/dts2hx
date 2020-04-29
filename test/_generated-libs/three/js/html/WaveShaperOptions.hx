package js.html;
extern typedef WaveShaperOptions = {
	@:optional
	var curve : haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var oversample : String;
	@:optional
	var channelCount : Float;
	@:optional
	var channelCountMode : String;
	@:optional
	var channelInterpretation : String;
};