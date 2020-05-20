package global.three;

@:native("THREE") extern abstract Shading(Any) from Any to Any {
	var FlatShading : Shading;
	var SmoothShading : Shading;
}