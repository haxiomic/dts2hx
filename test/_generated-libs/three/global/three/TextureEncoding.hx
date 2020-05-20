package global.three;

@:native("THREE") extern abstract TextureEncoding(Any) from Any to Any {
	var LinearEncoding : TextureEncoding;
	var sRGBEncoding : TextureEncoding;
	var GammaEncoding : TextureEncoding;
	var RGBEEncoding : TextureEncoding;
	var LogLuvEncoding : TextureEncoding;
	var RGBM7Encoding : TextureEncoding;
	var RGBM16Encoding : TextureEncoding;
	var RGBDEncoding : TextureEncoding;
}