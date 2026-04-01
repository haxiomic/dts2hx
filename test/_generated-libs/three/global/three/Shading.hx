package global.three;

@:native("THREE") extern enum abstract Shading(Int) from Int to Int {
	final FlatShading : Shading;
	final SmoothShading : Shading;
}