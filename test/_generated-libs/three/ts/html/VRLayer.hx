package ts.html;
extern typedef VRLayer = {
	@:optional
	var leftBounds : haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var rightBounds : haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>;
	@:optional
	var source : IHTMLCanvasElement;
};