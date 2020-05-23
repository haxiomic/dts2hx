package three;

@:enum @:jsRequire("three") extern abstract NormalMapTypes(Int) from Int to Int {
	final TangentSpaceNormalMap : NormalMapTypes;
	final ObjectSpaceNormalMap : NormalMapTypes;
}