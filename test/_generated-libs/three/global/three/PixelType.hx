package global.three;

@:enum @:native("THREE") extern abstract PixelType(Int) from Int to Int {
	var UnsignedShort4444Type : PixelType;
	var UnsignedShort5551Type : PixelType;
	var UnsignedShort565Type : PixelType;
	var UnsignedInt248Type : PixelType;
}