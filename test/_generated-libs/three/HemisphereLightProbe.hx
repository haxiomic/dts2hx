package three;
@:jsRequire("three", "HemisphereLightProbe") extern class HemisphereLightProbe extends LightProbe {
	function new(?skyColor:ts.AnyOf3<String, Float, Color>, ?groundColor:ts.AnyOf3<String, Float, Color>, ?intensity:Float);
	var isHemisphereLightProbe : Bool;
}