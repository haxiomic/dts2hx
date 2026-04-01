package global.three;

@:native("THREE") extern enum abstract NormalMapTypes(Int) from Int to Int {
	final TangentSpaceNormalMap : NormalMapTypes;
	final ObjectSpaceNormalMap : NormalMapTypes;
}