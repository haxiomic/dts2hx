package js.html;
extern interface WaveShaperOptions extends AudioNodeOptions {
	@:optional
	var curve : haxe.extern.EitherType<js.lib.Float32Array, std.Array<Float>>;
	@:optional
	var oversample : String;
}