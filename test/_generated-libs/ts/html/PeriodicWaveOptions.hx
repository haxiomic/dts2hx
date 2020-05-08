package ts.html;
typedef PeriodicWaveOptions = {
	@:optional
	var imag : ts.AnyOf2<ts.lib.Float32Array, Array<Float>>;
	@:optional
	var real : ts.AnyOf2<ts.lib.Float32Array, Array<Float>>;
	@:optional
	var disableNormalization : Bool;
};