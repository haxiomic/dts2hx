package three;
@:jsRequire("three", "LightProbe") extern class LightProbe extends Light {
	function new(?sh:SphericalHarmonics3, ?intensity:Float);
	var isLightProbe : Bool;
	var sh : SphericalHarmonics3;
}