package ts.html;
typedef VRLayer = {
	@:optional
	var leftBounds : ts.AnyOf2<ts.lib.IFloat32Array, Array<Float>>;
	@:optional
	var rightBounds : ts.AnyOf2<ts.lib.IFloat32Array, Array<Float>>;
	@:optional
	var source : IHTMLCanvasElement;
};