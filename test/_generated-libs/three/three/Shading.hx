package three;

@:enum @:jsRequire("three") extern abstract Shading(Int) from Int to Int {
	var FlatShading : Shading;
	var SmoothShading : Shading;
}