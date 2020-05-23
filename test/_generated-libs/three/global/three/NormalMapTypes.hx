package global.three;

@:enum @:native("THREE") extern abstract NormalMapTypes(Int) from Int to Int {
	final TangentSpaceNormalMap : NormalMapTypes;
	final ObjectSpaceNormalMap : NormalMapTypes;
}