package ts.html;
typedef VRLayer = {
	@:optional
	var leftBounds : ts.AnyOf2<Array<Float>, js.lib.Float32Array>;
	@:optional
	var rightBounds : ts.AnyOf2<Array<Float>, js.lib.Float32Array>;
	@:optional
	var source : js.html.CanvasElement;
};