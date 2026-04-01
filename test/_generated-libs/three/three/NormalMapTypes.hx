package three;

@:jsRequire("three") extern enum abstract NormalMapTypes(Int) from Int to Int {
	final TangentSpaceNormalMap : NormalMapTypes;
	final ObjectSpaceNormalMap : NormalMapTypes;
}