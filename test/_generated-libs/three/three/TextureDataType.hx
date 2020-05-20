package three;

@:jsRequire("three") extern abstract TextureDataType(Any) from Any to Any {
	var UnsignedByteType : TextureDataType;
	var ByteType : TextureDataType;
	var ShortType : TextureDataType;
	var UnsignedShortType : TextureDataType;
	var IntType : TextureDataType;
	var UnsignedIntType : TextureDataType;
	var FloatType : TextureDataType;
	var HalfFloatType : TextureDataType;
}