package three;

@:enum @:jsRequire("three") extern abstract TextureEncoding(Int) from Int to Int {
	final LinearEncoding : TextureEncoding;
	final sRGBEncoding : TextureEncoding;
	final GammaEncoding : TextureEncoding;
	final RGBEEncoding : TextureEncoding;
	final LogLuvEncoding : TextureEncoding;
	final RGBM7Encoding : TextureEncoding;
	final RGBM16Encoding : TextureEncoding;
	final RGBDEncoding : TextureEncoding;
}