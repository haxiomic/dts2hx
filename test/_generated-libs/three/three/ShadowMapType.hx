package three;

@:enum @:jsRequire("three") extern abstract ShadowMapType(Any) from Any to Any {
	var BasicShadowMap : ShadowMapType;
	var PCFShadowMap : ShadowMapType;
	var PCFSoftShadowMap : ShadowMapType;
}