package three;

@:jsRequire("three") extern enum abstract PixelType(Int) from Int to Int {
	final UnsignedShort4444Type : PixelType;
	final UnsignedShort5551Type : PixelType;
	final UnsignedShort565Type : PixelType;
	final UnsignedInt248Type : PixelType;
}