package three;

@:jsRequire("three") extern enum abstract PixelFormat(Int) from Int to Int {
	final AlphaFormat : PixelFormat;
	final RGBFormat : PixelFormat;
	final RGBAFormat : PixelFormat;
	final LuminanceFormat : PixelFormat;
	final LuminanceAlphaFormat : PixelFormat;
	final RGBEFormat : PixelFormat;
	final DepthFormat : PixelFormat;
	final DepthStencilFormat : PixelFormat;
	final RedFormat : PixelFormat;
}