package global.three;

@:native("THREE.NormalMapTypes") @:enum extern abstract NormalMapTypes(Any) from Any to Any {
	var TangentSpaceNormalMap : NormalMapTypes;
	var ObjectSpaceNormalMap : NormalMapTypes;
}