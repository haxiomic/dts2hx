package three;

@:enum @:jsRequire("three") extern abstract TextureEncoding(Int) from Int to Int {
	var LinearEncoding : TextureEncoding;
	var sRGBEncoding : TextureEncoding;
	var GammaEncoding : TextureEncoding;
	var RGBEEncoding : TextureEncoding;
	var LogLuvEncoding : TextureEncoding;
	var RGBM7Encoding : TextureEncoding;
	var RGBM16Encoding : TextureEncoding;
	var RGBDEncoding : TextureEncoding;
}