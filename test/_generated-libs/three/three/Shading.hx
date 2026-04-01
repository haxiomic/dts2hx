package three;

@:jsRequire("three") extern enum abstract Shading(Int) from Int to Int {
	final FlatShading : Shading;
	final SmoothShading : Shading;
}