package js.html;
extern typedef VRLayer = { @:optional
	var leftBounds : haxe.extern.EitherType<js.lib.Float32Array, std.Array<Float>>; @:optional
	var rightBounds : haxe.extern.EitherType<js.lib.Float32Array, std.Array<Float>>; @:optional
	var source : HTMLCanvasElement; };