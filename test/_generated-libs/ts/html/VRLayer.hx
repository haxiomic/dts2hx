package ts.html;
typedef VRLayer = {
	@:optional
	var leftBounds : ts.AnyOf2<ts.lib.Float32Array, Array<Float>>;
	@:optional
	var rightBounds : ts.AnyOf2<ts.lib.Float32Array, Array<Float>>;
	@:optional
	var source : HTMLCanvasElement;
};