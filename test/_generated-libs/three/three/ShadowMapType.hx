package three;

@:jsRequire("three") extern enum abstract ShadowMapType(Int) from Int to Int {
	final BasicShadowMap : ShadowMapType;
	final PCFShadowMap : ShadowMapType;
	final PCFSoftShadowMap : ShadowMapType;
}