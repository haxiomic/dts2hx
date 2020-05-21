package global.three;

@:enum @:native("THREE") extern abstract TextureDataType(Int) from Int to Int {
	var UnsignedByteType : TextureDataType;
	var ByteType : TextureDataType;
	var ShortType : TextureDataType;
	var UnsignedShortType : TextureDataType;
	var IntType : TextureDataType;
	var UnsignedIntType : TextureDataType;
	var FloatType : TextureDataType;
	var HalfFloatType : TextureDataType;
}