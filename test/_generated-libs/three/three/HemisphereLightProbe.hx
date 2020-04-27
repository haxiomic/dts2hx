package three;
@:jsRequire("three", "HemisphereLightProbe") extern class HemisphereLightProbe extends LightProbe {
	function new(?skyColor:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>, ?groundColor:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>, ?intensity:Float);
	var isHemisphereLightProbe : Bool;
}