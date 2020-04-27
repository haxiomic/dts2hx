package js.html;
extern interface PeriodicWaveOptions extends PeriodicWaveConstraints {
	@:optional
	var imag : haxe.extern.EitherType<js.lib.Float32Array, std.Array<Float>>;
	@:optional
	var real : haxe.extern.EitherType<js.lib.Float32Array, std.Array<Float>>;
}