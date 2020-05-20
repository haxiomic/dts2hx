package global.three;

@:native("THREE") extern abstract PixelFormat(Any) from Any to Any {
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