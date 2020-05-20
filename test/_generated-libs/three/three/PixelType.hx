package three;

@:jsRequire("three", "PixelType") @:enum extern abstract PixelType(Any) from Any to Any {
	var UnsignedShort4444Type : PixelType;
	var UnsignedShort5551Type : PixelType;
	var UnsignedShort565Type : PixelType;
	var UnsignedInt248Type : PixelType;
}