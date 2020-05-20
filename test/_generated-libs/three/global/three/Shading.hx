package global.three;

@:enum @:native("THREE") extern abstract Shading(Any) from Any to Any {
	var FlatShading : Shading;
	var SmoothShading : Shading;
}