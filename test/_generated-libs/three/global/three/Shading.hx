package global.three;

@:enum @:native("THREE") extern abstract Shading(Int) from Int to Int {
	var FlatShading : Shading;
	var SmoothShading : Shading;
}