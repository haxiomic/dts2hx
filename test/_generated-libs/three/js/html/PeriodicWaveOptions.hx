package js.html;
extern typedef PeriodicWaveOptions = {
	@:optional
	var imag : haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var real : haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var disableNormalization : Bool;
};