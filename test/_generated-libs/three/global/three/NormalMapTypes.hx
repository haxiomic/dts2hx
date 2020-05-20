package global.three;

@:enum @:native("THREE") extern abstract NormalMapTypes(Any) from Any to Any {
	var TangentSpaceNormalMap : NormalMapTypes;
	var ObjectSpaceNormalMap : NormalMapTypes;
}