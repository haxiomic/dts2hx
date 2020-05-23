package three;

@:enum @:jsRequire("three") extern abstract ShadowMapType(Int) from Int to Int {
	final BasicShadowMap : ShadowMapType;
	final PCFShadowMap : ShadowMapType;
	final PCFSoftShadowMap : ShadowMapType;
}