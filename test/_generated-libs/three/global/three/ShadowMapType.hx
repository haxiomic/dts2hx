package global.three;

@:native("THREE.ShadowMapType") @:enum extern abstract ShadowMapType(Any) from Any to Any {
	var BasicShadowMap : ShadowMapType;
	var PCFShadowMap : ShadowMapType;
	var PCFSoftShadowMap : ShadowMapType;
}