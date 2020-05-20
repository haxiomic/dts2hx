package three;

@:enum @:jsRequire("three") extern abstract Shading(Any) from Any to Any {
	var FlatShading : Shading;
	var SmoothShading : Shading;
}