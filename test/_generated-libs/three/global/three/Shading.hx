package global.three;

@:enum @:native("THREE") extern abstract Shading(Int) from Int to Int {
	final FlatShading : Shading;
	final SmoothShading : Shading;
}