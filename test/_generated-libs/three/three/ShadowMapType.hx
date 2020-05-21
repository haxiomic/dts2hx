package three;

@:enum @:jsRequire("three") extern abstract ShadowMapType(Int) from Int to Int {
	var BasicShadowMap : ShadowMapType;
	var PCFShadowMap : ShadowMapType;
	var PCFSoftShadowMap : ShadowMapType;
}