package ts.html;
extern typedef PeriodicWaveOptions = {
	@:optional
	var imag : ts.AnyOf2<ts.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var real : ts.AnyOf2<ts.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var disableNormalization : Bool;
};