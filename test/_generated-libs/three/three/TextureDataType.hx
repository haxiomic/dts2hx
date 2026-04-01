package three;

@:jsRequire("three") extern enum abstract TextureDataType(Int) from Int to Int {
	final UnsignedByteType : TextureDataType;
	final ByteType : TextureDataType;
	final ShortType : TextureDataType;
	final UnsignedShortType : TextureDataType;
	final IntType : TextureDataType;
	final UnsignedIntType : TextureDataType;
	final FloatType : TextureDataType;
	final HalfFloatType : TextureDataType;
}