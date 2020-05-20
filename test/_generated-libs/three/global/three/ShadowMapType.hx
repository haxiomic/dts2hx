package global.three;

@:enum @:native("THREE") extern abstract ShadowMapType(Any) from Any to Any {
	var BasicShadowMap : ShadowMapType;
	var PCFShadowMap : ShadowMapType;
	var PCFSoftShadowMap : ShadowMapType;
}