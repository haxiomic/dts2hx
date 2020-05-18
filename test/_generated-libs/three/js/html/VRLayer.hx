package js.html;

typedef VRLayer = {
	@:optional
	var leftBounds : ts.AnyOf2<js.lib.Float32Array, Array<Float>>;
	@:optional
	var rightBounds : ts.AnyOf2<js.lib.Float32Array, Array<Float>>;
	@:optional
	var source : js.html.CanvasElement;
};