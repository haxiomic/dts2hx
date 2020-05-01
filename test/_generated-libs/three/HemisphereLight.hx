package three;
@:jsRequire("three", "HemisphereLight") extern class HemisphereLight extends Light {
	function new(?skyColor:ts.AnyOf3<String, Float, Color>, ?groundColor:ts.AnyOf3<String, Float, Color>, ?intensity:Float);
	var skyColor : Color;
	var groundColor : Color;
}