package ts.html;
extern typedef PeriodicWaveOptions = {
	@:optional
	var imag : haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var real : haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var disableNormalization : Bool;
};