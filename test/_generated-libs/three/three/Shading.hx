package three;

@:enum @:jsRequire("three") extern abstract Shading(Int) from Int to Int {
	final FlatShading : Shading;
	final SmoothShading : Shading;
}