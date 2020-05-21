package three;

@:enum @:jsRequire("three") extern abstract PixelFormat(Int) from Int to Int {
	var AlphaFormat : PixelFormat;
	var RGBFormat : PixelFormat;
	var RGBAFormat : PixelFormat;
	var LuminanceFormat : PixelFormat;
	var LuminanceAlphaFormat : PixelFormat;
	var RGBEFormat : PixelFormat;
	var DepthFormat : PixelFormat;
	var DepthStencilFormat : PixelFormat;
	var RedFormat : PixelFormat;
}