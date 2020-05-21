package three;

@:enum @:jsRequire("three") extern abstract NormalMapTypes(Int) from Int to Int {
	var TangentSpaceNormalMap : NormalMapTypes;
	var ObjectSpaceNormalMap : NormalMapTypes;
}