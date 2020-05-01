package ts.html;
extern typedef VRLayer = {
	@:optional
	var leftBounds : ts.AnyOf2<ts.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var rightBounds : ts.AnyOf2<ts.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var source : IHTMLCanvasElement;
};