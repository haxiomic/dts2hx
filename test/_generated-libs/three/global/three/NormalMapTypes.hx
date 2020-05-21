package global.three;

@:enum @:native("THREE") extern abstract NormalMapTypes(Int) from Int to Int {
	var TangentSpaceNormalMap : NormalMapTypes;
	var ObjectSpaceNormalMap : NormalMapTypes;
}