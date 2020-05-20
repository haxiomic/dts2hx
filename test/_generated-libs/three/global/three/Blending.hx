package global.three;

@:enum @:native("THREE") extern abstract Blending(Any) from Any to Any {
	var NoBlending : Blending;
	var NormalBlending : Blending;
	var AdditiveBlending : Blending;
	var SubtractiveBlending : Blending;
	var MultiplyBlending : Blending;
	var CustomBlending : Blending;
}